resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'esx_ktackle - enables tackling for cops'

dependency "vrp"

server_scripts {
	'@vrp/lib/utils.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'lib/Tunnel.lua',
	'lib/Proxy.lua',
	'config.lua',
	'client/main.lua'
}