AddEventHandler("onResourceStart", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        -- Give the script some time to start
        Wait(100)

        ValidateOxLibUsage()
    end
end)
