-----------------------------teleport
local teleport = {
  {x = 935.408, y= 46.81, z=81.09} ---ltd nord
  
} 
Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0) 
      for k in pairs(teleport) do
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, teleport[k].x,teleport[k].y, teleport[k].z)
          DrawMarker(27, 935.408, 46.81, 80.15, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.9, 0.9, 0.9, 255, 0, 0, 255, 0, 1, 2, 0,  nil, nil, 0)
          if dist <= 1.0 then 

              ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ pour prendre le  ~b~chemin")
              if IsControlJustPressed(1,38) then  
                DoScreenFadeIn(2000) -- Ecran Noir
          -- LoadingPrompt('vous prennez le chemin...')
            DoScreenFadeOut(2000)  -- Ecran Noir
            Citizen.Wait(2000)
            DoScreenFadeIn(1500) -- Ecran Noir
            SetEntityCoords(PlayerPedId(), 1089.51, 206.08, -48.99)  
            ESX.ShowNotification("✅ Vous Etes rentrer dans le  ~g~Casino")
                  
                  end
              end 
          end
      end
  end)   
local teleports = {
  {x =1089.51, y= 206.08, z=-48.99} 
  
} 
Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0) 
      for k in pairs(teleports) do
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, teleports[k].x,teleports[k].y, teleports[k].z)
          DrawMarker(27, 1089.51, 206.08, -49.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.9, 0.9, 0.9, 255, 0, 0, 255, 0, 1, 2, 0,  nil, nil, 0)
          if dist <= 1.0 then 
              ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ pour prendre le  ~b~chemin")
              if IsControlJustPressed(1,38) then  
                DoScreenFadeIn(2000) -- Ecran Noir
          -- LoadingPrompt('vous prennez le chemin...')
            DoScreenFadeOut(2000)  -- Ecran Noir
            Citizen.Wait(2000)
            DoScreenFadeIn(1500) -- Ecran Noir
            SetEntityCoords(PlayerPedId(), 935.408,  46.81, 81.09)  
            ESX.ShowNotification("✅ Vous Etes sortie du   ~g~Casino")
                  
                  end
              end 
          end
      end
  end)   

function LoadingPrompt(loadingText, spinnerType)

    if IsLoadingPromptBeingDisplayed() then
        RemoveLoadingPrompt()
    end

    if (loadingText == nil) then
        BeginTextCommandBusyString(nil)
    else
        BeginTextCommandBusyString("STRING");
        AddTextComponentSubstringPlayerName(loadingText);
    end

    EndTextCommandBusyString(spinnerType)
end