fx_version 'cerulean'
game 'gta5'

author 'Trapmansosa'
description 'Food stamps script'
version '1.0.0'

server_scripts {
    '@qb-core/import.lua',
    'server/main.lua'
}

client_scripts {
    'client/main.lua'
}

shared_scripts {
    '@qb-core/shared/items.lua',
    '@qb-core/shared/shops.lua'
}