local isSitting, lastPos, currentSitCoords, currentScenario = {}
local disableControls = false
local currentObj = nil

-- Gets the correct model hash key whether you pass the string name or the number hash in
---@param item string|number The item to get the model hash for
---@return number The model hash key for the item
local function GetModelHashKey(item)
    local model = GetHashKey(item)

    -- Checking number for when the hash is passed directly
    if type(item) == "number" then
        model = item
    end

    return model
end

-- Starts a thread to listen for keypresses to get out of the chair
---@param chairEntity number The entity of the chair the player is sitting on
---@param scenario string The active scenario used for sitting
local function startSittingThread(chairEntity, scenario)
    CreateThread(function()
        while isSitting do
			-- If player somehow gets kicked out of the animation or they press the standup key,
			-- then stand the player up and end thread
            if (
                not IsPedUsingScenario(PlayerPedId(), scenario) or
				IsControlJustPressed(0, 38) or -- E
				IsControlJustPressed(0, 202) -- Backspace / ESC
            ) then
				-- Clear tasks, reset statebag, stand player up and end thread
				ClearPedTasks(PlayerPedId())
				Entity(chairEntity).state:set('isOccupied', false, true)
				isSitting = false
            end

            Wait(1)
        end
    end)
end

-- This event is called when a player tries to sit on a chair
RegisterNetEvent("wp-seats:client:sitOnChair", function(itemData)
	local playerPed = PlayerPedId()
	local chairCoords = GetEntityCoords(itemData.entity)
	local playerPos = GetEntityCoords(playerPed)

	local chairEntity = itemData.entity
	local chairConfig = Config.Seats[itemData.itemModel]
	local scenario = chairConfig.scenario
	local offset = chairConfig.offset
	local headingOffset = (offset and offset.heading) or 180.0
	-- Options are optional and may not be defined
	local options = chairConfig.options
	local timeout = (options and options.timeout) or Config.SitScenarioTimeout

	-- Check the entity statebag to see if its occupied by another player
	local isOccupied = Entity(chairEntity).state.isOccupied
	if isOccupied then
		Notify("This seat is occupied", "error")
		return
	end

	-- Freeze entity so it doesnt get moved around when you go to sit on it
	FreezeEntityPosition(chairEntity, true)
	PlaceObjectOnGroundProperly(chairEntity)

	TaskStartScenarioAtPosition(
		playerPed,
		scenario,
		chairCoords.x + offset.x,
		chairCoords.y + offset.y,
		chairCoords.z + (playerPos.z - chairCoords.z)/2 + offset.z,
		GetEntityHeading(chairEntity) + headingOffset,
		0,
		true,
		false
	)

	Wait(timeout)

	-- This is attempting to handle a case where the ped is trying to walk to get into the chair but gets stuck (ex: chair to close to a table).
	-- If they get stuck this just teleports them onto the chair
	-- IsPedActiveInScenario seems to return true only when the player stops moving and is "in" the scenario, it returns false while the character is moving / animating to get into the sitting position
	if (GetEntitySpeed(playerPed) >= 0) and (not IsPedActiveInScenario(playerPed)) then
		ClearPedTasks(playerPed)
		TaskStartScenarioAtPosition(
			playerPed,
			scenario,
			chairCoords.x + offset.x,
			chairCoords.y + offset.y,
			chairCoords.z + (playerPos.z - chairCoords.z)/2 + offset.z,
			GetEntityHeading(chairEntity) + headingOffset,
			0,
			true,
			true
		)
	end

	isSitting = true

	-- Set chair statebag as occupied
	Entity(chairEntity).state:set('isOccupied', true, true)

	startSittingThread(chairEntity, scenario)
end)

-- Sets up the target model for all of the chairs that can be sat on
-- Note: If the same model is used in a different script this may cause conflicts
CreateThread(function()
    for _, seat in pairs(Config.Seats) do
        local model = GetModelHashKey(seat.model)

        -- If the model is a placeable chair, it is defined in placeables.lua already and is setup as a targeted model
        -- On these models we will skip adding the target here otherwise it will conflict and user may not see the option to pickup that chair item
        if not seat.skipTarget then
            AddTargetModel(seat.model, {
                options = {
                    {
                        type = 'client',
                        event = "wp-seats:client:sitOnChair",
                        icon = "fas fa-chair",
                        label = "Sit down",
						itemModel = seat.model,
                    }
                },
                distance = 2
            })
        end
    end
end)
