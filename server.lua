ESX = exports['es_extended']:getSharedObject()

RegisterCommand(Config.Command, function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    local job = xPlayer.job.name

    if job == 'police' then
        local message = ""
        local number = tonumber(args[1])

        if number == nil then
            message = "^1ERROR: ^7Debe ingresar un número válido."
        else
            message = "^4👮 POLICIAS DISPONIBLES: ^2" .. number
        end

        TriggerClientEvent("pdispo:message", -1, message)
    else        
        ESX.ShowNotification(source, "¡No eres policia!")
    end
end, false)

