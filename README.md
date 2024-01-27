# Waypoint Seats

![wp-seats](https://github.com/WaypointRP/wp-seats/assets/18689469/033bc050-8ad7-4d49-a9de-793e4db74710)

Waypoint Seats is a simple, standalone script that adds a "sit" target option to chairs around the map. 

This script also works well with [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables), users can carry chair items and place them anywhere around the map (such as folding camping chairs, plastic chairs, etc), allowing them to put together their own seating areas anywhere they want.

> Note: If the players path to walk to and sit down on the chair is obstructed, there is a timeout (`Config.SitScenarioTimeout`) that will run and teleport the player into the chair after the timeout. This adds more flexibility and lets players sit in chairs that are close to tables or other objects.

Preview: https://youtu.be/dxhkJY5AXkM

## Usage
- Target chair and sit in the chair
- Press E or ESC to standup from the chair
- Only one player can sit in a chair at a time, using statebags to keep track if the chair is occupied
- Chairs can be placed and picked up anywhere using [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables)

## Setup
1. Enable the script in your server.cfg

2. Update the config file to match your scripts for: Framework, Notify, Target

3. Optionally add more chair models to the config file. You can use the prop model name or the hash. 
   - You can find additional props on [Pleb Masters: Forge](https://forge.plebmasters.de/objects)
   - Or if you see an object in game you can use your admin menu delete laser to get the prop name or hash.
   > Note: Chairs in custom MLOs may or may not work. It is dependent on how the MLO was created. If the MLO uses the actual prop for the chair, then it should work. If the MLO has the chair baked into the MLO, then it will not work. If the model id does not work, you may have luck getting the name of the entity through codewalker.

4. Optional: If using  [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables), uncomment these lines in `wp-placeables/shared/config.lua`:
   ```
   local chairCustomTargetOptions = {
        {
            event = "wp-seats:client:sitOnChair",
            icon = "fas fa-chair",
            label = "Sit down",
        },
    } 
   ```
> Note: If you are using `ox` for any of the Framework options you need to uncomment `@ox_lib/init.lua` in the fxmanifest.lua.

## Dependencies
Aside from a targetting script, this script is standalone and does not require any other resources to function.

- QBCore / OX for Target
- Optional:
  - QBCore / ESX / Or other frameworks (must implement framework specific solutions in framework.lua)
  - QBCore / ESX / OX for Notifications

## Credit
Originally based on [qb-sit](https://github.com/Manliketjb/qb-sit), but has been almost completely rewritten to be standalone, more performant and fix bugs.

@DonHulieo for providing insipiration and examples for structuring the framework.lua file.
