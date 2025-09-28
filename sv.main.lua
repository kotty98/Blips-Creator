ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('jobcenter:tryBuy', function(itemName)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    -- najdeme dokument podle itemu v Config.JobCenter
    local doc = nil
    for _, d in ipairs(Config.JobCenter.documents) do
        if d.item == itemName then
            doc = d
            break
        end
    end

    if not doc then
        TriggerClientEvent('jobcenter:notify', src, 'Neplatný dokument.')
        return
    end

    -- kontrola požadavku (pokud nějaký je)
    if doc.requirement then
        local reqItem = xPlayer.getInventoryItem(doc.requirement)
        if not reqItem or reqItem.count <= 0 then
            TriggerClientEvent('jobcenter:notify', src, 'Nemáš požadavek pro tento dokument: '.. doc.requirement)
            return
        end
    end

    -- kontrola peněz
    if xPlayer.getMoney() < doc.price then
        TriggerClientEvent('jobcenter:notify', src, 'Nemáš dost peněz. Potřebuješ $' .. doc.price)
        return
    end

    -- odebrání peněz a přidání itemu
    xPlayer.removeMoney(doc.price)
    xPlayer.addInventoryItem(doc.item, 1)

    TriggerClientEvent('jobcenter:notify', src, 'Zakoupil/a jsi '.. doc.label ..' za $'.. doc.price)
end)
