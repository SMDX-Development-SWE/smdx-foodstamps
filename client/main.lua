local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    local shop = Config.FoodStampShop.location
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)

        if GetDistanceBetweenCoords(coords, shop, true) < 1.5 then
            DrawText3Ds(shop.x, shop.y, shop.z, "[E] Redeem Food Stamp")
            if IsControlJustReleased(0, 38) then
                OpenFoodStampMenu()
            end
        end
    end
end)

function OpenFoodStampMenu()
    QBCore.Functions.TriggerCallback('SMDX-Foodstamp:getShopItems', function(items)
        local menu = {
            { header = "Food Stamp Shop", isMenuHeader = true }
        }

        for _, item in pairs(items) do
            menu[#menu+1] = {
                header = item.name,
                txt = "Price: 1 Food Stamp",
                params = {
                    event = 'SMDX-Foodstamp:client:redeemItem',
                    args = { item = item.name }
                }
            }
        end

        menu[#menu+1] = {
            header = "Close",
            txt = "",
            params = {
                event = 'qb-menu:closeMenu'
            }
        }

        exports['qb-menu']:openMenu(menu)
    end)
end

RegisterNetEvent('SMDX-Foodstamp:client:redeemItem')
AddEventHandler('SMDX-Foodstamp:client:redeemItem', function(data)
    TriggerServerEvent('SMDX-Foodstamp:redeemItem', data.item)
end)

function DrawText3Ds(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local scale = 0.35
    if onScreen then
        SetTextScale(scale, scale)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
        local factor = (string.len(text)) / 370
        DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 150)
    end
end