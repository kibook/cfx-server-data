--[[
AddEventHandler('onClientMapStart', function()
  exports.spawnmanager:setAutoSpawn(true)
  exports.spawnmanager:forceRespawn()
end)
]]

AddEventHandler('onClientMapStart', function()
  	exports.spawnmanager:setAutoSpawn(false)
	exports.spawnmanager:spawnPlayer()
end)
--
--CreateThread(function()
--	local SendDeathMessage = true
--
--	while true do
--		Wait(0)
--
--		if IsPedDeadOrDying(PlayerPedId()) then
--			if SendDeathMessage then
--				TriggerEvent('chat:addMessage', {
--					color = {255, 255, 128},
--					args = {'You died! Press F to revive or R to respawn.'}
--				});
--				
--				SendDeathMessage = false
--			end
--
--			if IsControlJustPressed(0, 0xE30CD707) then -- Reload, R
--				exports.spawnmanager:spawnPlayer(nil, function()
--					SendDeathMessage = true
--				end)
--			elseif IsControlJustPressed(0, 0xD596CFB0) then
--				ResurrectPed(PlayerPedId())
--				SendDeathMessage = true
--			end
--		end
--	end
--end)
