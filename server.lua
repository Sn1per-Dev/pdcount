ESX = exports['es_extended']:getSharedObject()


function GetActivePoliceCount()
    local players = ESX.GetPlayers()
    local count = 0
    for _, playerId in ipairs(players) do
        local xPlayer = ESX.GetPlayerFromId(playerId)
        if xPlayer then
            for _, job in ipairs(Config.PoliceJobs) do
                if xPlayer.job.name == job then
                    count = count + 1
                    break
                end
            end
        end
    end
    return count
end

function GetActiveEMSCount()
    local players = ESX.GetPlayers()
    local count = 0
    for _, playerId in ipairs(players) do
        local xPlayer = ESX.GetPlayerFromId(playerId)
        if xPlayer then
            for _, job in ipairs(Config.EMSJobs) do
                if xPlayer.job.name == job then
                    count = count + 1
                    break
                end
            end
        end
    end
    return count
end


RegisterCommand('pdcount', function(source, args, rawCommand)
    local policeCount = GetActivePoliceCount()
    TriggerClientEvent('ox_lib:notify', source, {
        title = 'PD Count',
        description = string.format('Momentálně je na serveru **%d** aktivních ozbrojených složek', policeCount),
        duration = 7000
    })
end, false)

RegisterCommand('emscount', function(source, args, rawCommand)
    local emsCount = GetActiveEMSCount()
    TriggerClientEvent('ox_lib:notify', source, {
        title = 'EMS Count',
        description = string.format('Momentálně je na serveru **%d** aktivních záchranářů', emsCount),
        duration = 7000
    })
end, false)


AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        while not GetResourceState('chat') == 'started' do
            Wait(100)
        end
        TriggerEvent('chat:addSuggestion', '/pdcount', 'Zobrazí počet aktivních ozbrojených složek', {})
        TriggerEvent('chat:addSuggestion', '/emscount', 'Zobrazí počet aktivních záchranářů', {})
    end
end)