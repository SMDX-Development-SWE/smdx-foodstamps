instal these two files in to the places it states to put them make sure to add the images to the correct spot. 
qbcore food stamp script created by trapmansosa on SMDX-Development

SMDX-Development Discord:
https://discord.gg/UTRvuRE563

Trapmansosa's discord:
https://discord.gg/cDH8gw6ved


make sure to change the shop as needed for your server needs



add this part into qb-core/shared/items.lua
["food_stamp"] = {
    ["name"] = "food_stamp",
    ["label"] = "Food Stamp",
    ["weight"] = 0,
    ["type"] = "item",
    ["image"] = "food_stamp.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = "Use this to buy food."
},

["sandwich"] = {
    ["name"] = "sandwich",
    ["label"] = "Sandwich",
    ["weight"] = 1,
    ["type"] = "item",
    ["image"] = "sandwich.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = "A delicious sandwich."
},

["water"] = {
    ["name"] = "water",
    ["label"] = "Water Bottle",
    ["weight"] = 1,
    ["type"] = "item",
    ["image"] = "water.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = "A bottle of water."
},

["apple"] = {
    ["name"] = "apple",
    ["label"] = "Apple",
    ["weight"] = 1,
    ["type"] = "item",
    ["image"] = "apple.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = "A fresh apple."
},

**qb-core/shared/shops.lua:**

Config.FoodStampShop = {
    location = vector3(-48.5, -1757.7, 29.4), -- Example location, adjust as needed
    items = {
        { name = "sandwich", price = 1 },
        { name = "water", price = 1 },
        { name = "apple", price = 1 }
    }
}