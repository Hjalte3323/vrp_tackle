-- 2018 Henric 'Kekke' Johansson
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_tackle")

RegisterServerEvent('vrp_tackle:tryTackle')
AddEventHandler('vrp_tackle:tryTackle', function(target)
	local targetPlayer = vRP.getUserId({target})

	TriggerClientEvent('vrp_tackle:getTackled', targetPlayer.source, source)
	TriggerClientEvent('vrp_tackle:playTackle', source)
end)