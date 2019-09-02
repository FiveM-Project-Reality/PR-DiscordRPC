Citizen.CreateThread(function()
	while true do
		local count = 0
	
		local presenceSays = {
			"Cruising Down ",
			"Bussin' Down ",
			"Stopping by ",
			"Meeting People at ",
			"Rolling Down "
		}
	
		for _, __ in pairs(presenceSays) do 
			count = count + 1
		end
	
		local randomPresence = math.random(1, count)
	
		local player = GetPlayerPed(-1)
	
		SetDiscordAppId(616009763645423656)
		SetDiscordRichPresenceAsset('pr-icon')
		
		SetRichPresence(presenceSays[randomPresence] .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player)))))
		SetDiscordRichPresenceAssetText('Project Reality')
		Citizen.Wait(20000)
	end
end)