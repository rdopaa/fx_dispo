RegisterNetEvent("pdispo:message")
AddEventHandler("pdispo:message", function(message)
    if message ~= nil then
        TriggerEvent('chat:addMessage', {
            args = { message }
        })
    end
end)