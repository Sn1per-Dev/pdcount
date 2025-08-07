-- Author: Sn1per
-- Copyright (c) 2025 Sn1per. All rights reserved.
-- This script is protected by copyright law. Unauthorized copying, modification, distribution, or use of this script or its components is strictly prohibited.
-- The folder name must remain 'Sn1per_pdcount'. Renaming or modifying the folder name will result in the script not working.

fx_version 'cerulean'
game 'gta5'

author 'Sn1per'


shared_script 'config.lua'
server_script 'server.lua'
client_script 'client.lua'

-- Folder name check (client-side)
local resourceName = GetCurrentResourceName()
if resourceName ~= "Sn1per_pdcount" then
    print("[Sn1per_pdcount] ERROR: The resource folder must be named 'Sn1per_pdcount'.")
    while true do Wait(1000) end -- Prevent script from running
end

dependencies {
    'es_extended',
    'chat'
}
