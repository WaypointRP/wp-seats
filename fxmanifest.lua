fx_version "cerulean"
game "gta5"

description "Waypoint Seats"
author "BackSH00TER - Waypoint RP"
version "1.0.1"

shared_script {
    -- "@ox_lib/init.lua", -- Uncomment this if you are planning to use any ox scripts (such as ox notify)
    "shared/config.lua",
    "shared/framework.lua",
}

client_scripts {
    "client.lua",
}

lua54 "yes"
