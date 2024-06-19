local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('SMDX-Foodstamp:redeemItem')
AddEventHandler('SMDX-Foodstamp:redeemItem', function(itemName)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = QBCore.Shared.Items[itemName]

    if item then
        if Player.Functions.RemoveItem('food_stamp', 1) then
            Player.Functions.AddItem(itemName, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, item, "add")
            TriggerClientEvent('QBCore:Notify', src, "You redeemed a " .. item.label .. " using a food stamp", "success")
        else
            TriggerClientEvent('QBCore:Notify', src, "You don't have any food stamps", "error")
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "Invalid item", "error")
    end
end)

QBCore.Functions.CreateCallback('SMDX-Foodstamp:getShopItems', function(source, cb)
    cb(Config.FoodStampShop.items)
end)