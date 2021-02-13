ESX = nil
local IsDead = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer 
end)

local used = 0

RegisterNetEvent('sho_weapon_attachments:weaponmag')
AddEventHandler('sho_weapon_attachments:weaponmag', function(duration)
				local inventory = ESX.GetPlayerData().inventory
				local weaponmag = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'weaponmag' then
						weaponmag = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used <= weaponmag then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_CLIP_02"))  
				   ESX.ShowNotification(_U('equip'))
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
					  used = used + 1

					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL"), GetHashKey("COMPONENT_SNSPISTOL_CLIP_02"))  
						 ESX.ShowNotification(_U('equip')) 
						   used = used + 1

						elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
							GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CLIP_02"))  
							 ESX.ShowNotification(_U('equip')) 
							   used = used + 1		
							elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
								GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CLIP_02"))  
								 ESX.ShowNotification(_U('equip')) 
								   used = used + 1	   


		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
					used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
		  			used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
		  		  	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
		  		 	used = used + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
	used = used + 1
				

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_ASSAULTSMG_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_02"))  
				    ESX.ShowNotification(_U('equip'))  
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_BULLPUPSHOTGUN_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
	used = used + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_PUMPSHOTGUN_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNIPERRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"), GetHashKey("COMPONENT_SNIPERRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
			else
				ESX.ShowNotification(_U('error2'))  

		end
end)
				local used2 = 0

RegisterNetEvent('sho_weapon_attachments:weapondrum')
AddEventHandler('sho_weapon_attachments:weapondrum', function(duration)
				local inventory = ESX.GetPlayerData().inventory
				local weapondrum = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'weapondrum' then
						weapondrum = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used <= weapondrum then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_CLIP_02"))  
				   ESX.ShowNotification(_U('equip'))
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
					  used = used + 1

					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL"), GetHashKey("COMPONENT_SNSPISTOL_CLIP_02"))  
						 ESX.ShowNotification(_U('equip')) 
						   used = used + 1

						elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
							GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CLIP_02"))  
							 ESX.ShowNotification(_U('equip')) 
							   used = used + 1		
							elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
								GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CLIP_02"))  
								 ESX.ShowNotification(_U('equip')) 
								   used = used + 1	   


		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
					used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
		  			used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
		  		  	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
		  		 	used = used + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
	used = used + 1
				

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_ASSAULTSMG_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_02"))  
				    ESX.ShowNotification(_U('equip'))  
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_BULLPUPSHOTGUN_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
	used = used + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_PUMPSHOTGUN_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNIPERRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"), GetHashKey("COMPONENT_SNIPERRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
			else
				ESX.ShowNotification(_U('error2'))  

		end
end)
				local used2 = 0

RegisterNetEvent('sho_weapon_attachments:compensator')
AddEventHandler('sho_weapon_attachments:compensator', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local compensator = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'compensator' then
						compensator = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used2 <= compensator then
						print('used2')

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_COMP"))  
				   ESX.ShowNotification(_U('equip'))  
		  		 	used2 = used2 + 1
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_COMP_02"))  
				   ESX.ShowNotification(_U('equip')) 
	used2 = used2 + 1
		  		

		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)
				local used3 = 0

RegisterNetEvent('sho_weapon_attachments:mk2scope')
AddEventHandler('sho_weapon_attachments:mk2scope', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local mk2scope = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'mk2scope' then
						mk2scope = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used3 <= mk2scope then

			
			if currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_RAIL"))  
				   ESX.ShowNotification(_U('equip')) 
		  				used3 = used3 + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_PI_RAIL_02"))  
				   ESX.ShowNotification(_U('equip')) 
	used3 = used3 + 1
		  		
		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  
		end
end)

				local used4 = 0

RegisterNetEvent('sho_weapon_attachments:yusuf')
AddEventHandler('sho_weapon_attachments:yusuf', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local yusuf = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'yusuf' then
						yusuf = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used4 <= yusuf then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
		  		 	used4 = used4 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		
				
		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
				


		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1

elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER"))  
	ESX.ShowNotification(_U('equip'))  
used4 = used4 + 1

elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER"))  
	ESX.ShowNotification(_U('equip')) 
used4 = used4 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip'))  
	used4 = used4 + 1
		  		
		  	
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used5 = 0

RegisterNetEvent('sho_weapon_attachments:scoperifle')
AddEventHandler('sho_weapon_attachments:scoperifle', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local scoperifle = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'scoperifle' then
						scoperifle = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used5 <= scoperifle then

			if currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_SCOPE_MACRO_02"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_SCOPE_MACRO"))  
				   ESX.ShowNotification(_U('equip'))  
				   used5 = used5 + 1
				
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MACRO"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used5 = used5 + 1
		  		
		  	
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used6 = 0

RegisterNetEvent('sho_weapon_attachments:vipskinbutterfly')
AddEventHandler('sho_weapon_attachments:vipskinbutterfly', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local vipskinbutterfly = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'vipskinbutterfly' then
						vipskinbutterfly = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used6 <= vipskinbutterfly then

			if currentWeaponHash == GetHashKey("WEAPON_SWITCHBLADE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SWITCHBLADE"), GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_VAR1"))  
				   ESX.ShowNotification(_U('equip')) 
				   used6 = used6 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used7 = 0

RegisterNetEvent('sho_weapon_attachments:knuckleskinlove')
AddEventHandler('sho_weapon_attachments:knuckleskinlove', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskinlove = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinlove' then
						knuckleskinlove = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used7 <= knuckleskinlove then

			if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_LOVE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used7 = used7 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used8 = 0

RegisterNetEvent('sho_weapon_attachments:mediumscope')
AddEventHandler('sho_weapon_attachments:mediumscope', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local mediumscope = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'mediumscope' then
						mediumscope = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used8 <= mediumscope then

			if currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_AT_SCOPE_SMALL_MK2"))  
				   ESX.ShowNotification(_U('equip')) 
				   used8 = used8 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used9 = 0

RegisterNetEvent('sho_weapon_attachments:largescope')
AddEventHandler('sho_weapon_attachments:largescope', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local largescope = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'largescope' then
						largescope = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used9 <= largescope then

			if currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
				   ESX.ShowNotification(_U('equip')) 
				   used9 = used9 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used9 = used9 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used9 = used9 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))   

		end
end)

local used10 = 0

RegisterNetEvent('sho_weapon_attachments:holoscope')
AddEventHandler('sho_weapon_attachments:holoscope', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local holoscope = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'holoscope' then
						holoscope = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used10 <= holoscope then

			if currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_SIGHTS_SMG"))  
				   ESX.ShowNotification(_U('equip')) 
				   used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip')) 
					used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip'))  
					used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip')) 
					used10 = used10 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used11 = 0

RegisterNetEvent('sho_weapon_attachments:platskinpistol50')
AddEventHandler('sho_weapon_attachments:platskinpistol50', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local platskinpistol50 = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'platskinpistol50' then
						platskinpistol50 = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used11 <= platskinpistol50 then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used11 = used11 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used12 = 0

RegisterNetEvent('sho_weapon_attachments:woodhpistolskin')
AddEventHandler('sho_weapon_attachments:woodhpistolskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local woodhpistolskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'woodhpistolskin' then
						woodhpistolskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used12 <= woodhpistolskin then

			if currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used12 = used12 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used13 = 0

RegisterNetEvent('sho_weapon_attachments:woodrifleskin')
AddEventHandler('sho_weapon_attachments:woodrifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local woodrifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'woodrifleskin' then
						woodrifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used13 <= woodrifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_03"))  
				   ESX.ShowNotification(_U('equip')) 
				   used13 = used13 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip'))  
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used14 = 0

RegisterNetEvent('sho_weapon_attachments:skullrifleskin')
AddEventHandler('sho_weapon_attachments:skullrifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skullrifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skullrifleskin' then
						skullrifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used14 <= skullrifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_04"))  
				   ESX.ShowNotification(_U('equip')) 
				   used14 = used14 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip'))  
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))   

		end
end)

local used15 = 0

RegisterNetEvent('sho_weapon_attachments:zebrarifleskin')
AddEventHandler('sho_weapon_attachments:zebrarifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local zebrarifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'zebrarifleskin' then
						zebrarifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used15 <= zebrarifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_08"))  
				   ESX.ShowNotification(_U('equip')) 
				   used15 = used15 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip'))  
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used16 = 0

RegisterNetEvent('sho_weapon_attachments:boomrifleskin')
AddEventHandler('sho_weapon_attachments:boomrifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local boomrifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'boomrifleskin' then
						boomrifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used16 <= boomrifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_10"))  
				   ESX.ShowNotification(_U('equip')) 
				   used16 = used16 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip'))  
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used17 = 0

RegisterNetEvent('sho_weapon_attachments:tacticalmuzzlebrake')
AddEventHandler('sho_weapon_attachments:tacticalmuzzlebrake', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local tacticalmuzzlebrake = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'tacticalmuzzlebrake' then
						tacticalmuzzlebrake = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used17 <= tacticalmuzzlebrake then
				if currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used18 = 0

RegisterNetEvent('sho_weapon_attachments:knucleskinpimp')
AddEventHandler('sho_weapon_attachments:knucleskinpimp', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knucleskinpimp = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knucleskinpimp' then
						knucleskinpimp = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used18 <= knucleskinpimp then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_PIMP"))  
					ESX.ShowNotification(_U('equip')) 
					used18 = used18 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used19 = 0

RegisterNetEvent('sho_weapon_attachments:knuckleskinballas')
AddEventHandler('sho_weapon_attachments:knuckleskinballas', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskinballas = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinballas' then
						knuckleskinballas = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used19 <= knuckleskinballas then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_BALLAS"))  
					ESX.ShowNotification(_U('equip')) 
					used19 = used19 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used20 = 0

RegisterNetEvent('sho_weapon_attachments:knuckleskindollar')
AddEventHandler('sho_weapon_attachments:knuckleskindollar', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskindollar = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskindollar' then
						knuckleskindollar = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used20 <= knuckleskindollar then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_DOLLAR"))  
					ESX.ShowNotification(_U('equip')) 
					used20 = used20 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used21 = 0

RegisterNetEvent('sho_weapon_attachments:knucleskindiamond')
AddEventHandler('sho_weapon_attachments:knucleskindiamond', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knucleskindiamond = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knucleskindiamond' then
						knucleskindiamond = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used21 <= knucleskindiamond then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_DIAMOND"))  
					ESX.ShowNotification(_U('equip')) 
					used21 = used21 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)



local used22 = 0

RegisterNetEvent('sho_weapon_attachments:knuckleskinhate')
AddEventHandler('sho_weapon_attachments:knuckleskinhate', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskinhate = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinhate' then
						knuckleskinhate = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used22 <= knuckleskinhate then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_HATE"))  
					ESX.ShowNotification(_U('equip'))  
					used22 = used22 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used23 = 0

RegisterNetEvent('sho_weapon_attachments:knuckleskinplayer')
AddEventHandler('sho_weapon_attachments:knuckleskinplayer', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskinplayer = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinplayer' then
						knuckleskinplayer = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used23 <= knuckleskinplayer then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_PLAYER"))  
					ESX.ShowNotification(_U('equip')) 
					used23 = used23 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used24 = 0

RegisterNetEvent('sho_weapon_attachments:knuckleskinvagos')
AddEventHandler('sho_weapon_attachments:knuckleskinvagos', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local knuckleskinvagos = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'knuckleskinvagos' then
						knuckleskinvagos = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used24 <= knuckleskinvagos then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_VAGOS"))  
					ESX.ShowNotification(_U('equip')) 
					used24 = used24 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used25 = 0

RegisterNetEvent('sho_weapon_attachments:weapongrip')
AddEventHandler('sho_weapon_attachments:weapongrip', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local weapongrip = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'weapongrip' then
						weapongrip = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used25 <= weapongrip then
				if currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
					ESX.ShowNotification(_U('equip')) 
					used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used26 = 0

RegisterNetEvent('sho_weapon_attachments:weaponsuppressor')
AddEventHandler('sho_weapon_attachments:weaponsuppressor', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local weaponsuppressor = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'weaponsuppressor' then
						weaponsuppressor = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used26 <= weaponsuppressor then
				if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
					ESX.ShowNotification(_U('equip')) 
					used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used27 = 0

RegisterNetEvent('sho_weapon_attachments:flashlightweapon')
AddEventHandler('sho_weapon_attachments:flashlightweapon', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local flashlightweapon = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'flashlightweapon' then
						flashlightweapon = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used27 <= flashlightweapon then
				if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
					ESX.ShowNotification(_U('equip')) 
					used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_FLSH_03"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_FLSH_02"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)























