local ESX = exports["es_extended"]:getSharedObject()

lib.callback.register('ars_documents:getName', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local name = xPlayer.getName()
    return name
end)

RegisterNetEvent("ars_documents:createDocument", function(data)
    local source = source
    -- Uso de la exportación AddItem de qs-inventory
    exports['qs-inventory']:AddItem(source, Config.Item, 1, nil, data)
end)

lib.versionCheck('Arius-Development/ars_documents')