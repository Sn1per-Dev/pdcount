--[[ 
    Script: Sn1per PD Count
    Author: Sn1per
    Year: 2025

    📜 License:
    Copyright (c) 2025 Sn1per. All rights reserved.
    This script is protected by copyright law. Unauthorized copying, modification, distribution,
    or use of this script or its components is strictly prohibited.

    ⚠️ Important:
    The folder name must remain 'Sn1per_pdcount'. Renaming or modifying the folder name 
    will result in the script not functioning properly.
]]

fx_version 'cerulean'
game 'gta5'

author 'Sn1per'
description 'Police Count Display Script for FiveM (ESX)'
version '1.0.0'

-- Config & Core Scripts
shared_script 'config.lua'

-- Server/Client Logic
server_script 'server.lua'
client_script 'client.lua'

-- Required Dependencies
dependencies {
    'es_extended',
    'chat'
}
