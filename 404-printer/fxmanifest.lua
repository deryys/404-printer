fx_version 'cerulean'
game 'gta5'
lua54 'yes'

server_scripts {'server/server.lua'}
client_scripts {'client/client.lua'}
shared_scripts {
    'config.lua',
    '@ox_lib/init.lua',
    '@es_extended/imports.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/script.js',
    'ui/style.css'
}