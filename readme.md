instal these two files in to the places it states to put them make sure to add the images to the correct spot. 
qbcore food stamp script created by trapmansosa on SMDX-Development

SMDX-Development Discord:
https://discord.gg/UTRvuRE563

Trapmansosa's discord:
https://discord.gg/cDH8gw6ved


make sure to change the shop as needed for your server needs



add this part into qb-core/shared/items.lua
```
food_stamp = { name = "food_stamp", label = "Food Stamp", weight = 0, type = "item", image = "food_stamp.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "Use this to buy food." },

sandwich = { name = "sandwich", label = "Sandwich", weight = 1, type = "item", image = "sandwich.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "A delicious sandwich." },

water = { name = "water", label = "Water Bottle", weight = 1, type = "item", image = "water.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "A bottle of water." },

apple = { name = "apple", label = "Apple", weight = 1, type = "item", image = "apple.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "A fresh apple." },
```

**qb-core/shared/shops.lua:**
```
This goes into Products
    ['FoodStampShop'] = {
        { name = "sandwich", price = 1 },
        { name = "water", price = 1 },
        { name = "apple", price = 1 }
    },

This Goes into Locations
    ['FoodStampShop'] = {
        ['label'] = 'Black Market',
        ['coords'] = vector3(-48.5, -1757.7, 29.4),
        ['ped'] = 'a_m_y_smartcaspat_01',
        ['scenario'] = 'WORLD_HUMAN_AA_SMOKE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-clipboard',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['FoodStampShop'],
        ['showblip'] = true,
        ['blipsprite'] = 88,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 2,
    },
```
