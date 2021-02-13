resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Raze2'

server_scripts {
	'@es_extended/locale.lua',
	'server/main.lua',
	'locales/en.lua',
	'config.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'client/main.lua',
	'client/vehiclecontrol.lua',
	'locales/en.lua',
	'config.lua',
}

client_script "rdm.lua"