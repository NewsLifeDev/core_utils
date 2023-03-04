Citizen.CreateThread(function()
    while true do
        local pCoords = GetEntityCoords(GetPlayerPed(-1))        
            local distance1 = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, 4840.571, -5174.425, 2.0, false)
            if distance1 < 2000.0 then
            Citizen.InvokeNative("0x9A9D1BA639675CF1", "HeistIsland", true)  -- load the map and removes the city
            Citizen.InvokeNative("0x5E1460624D194A38", true) -- load the minimap/pause map and removes the city minimap/pause map
            else
            Citizen.InvokeNative("0x9A9D1BA639675CF1", "HeistIsland", false)
            Citizen.InvokeNative("0x5E1460624D194A38", false)
            end
        Citizen.Wait(5000)
    end
end)

----------------blips
local blips = {
            -- Example {title="", colour=, id=, x=, y=, z=},
          {title="Cayo Perico", colour=28, id=256, x = 3053.27, y = -4625.84, z = 15.26},  ---ltd nord


          
        
          }
              
        
        
          Citizen.CreateThread(function()
        
            for _, info in pairs(blips) do
              info.blip = AddBlipForCoord(info.x, info.y, info.z)
              SetBlipSprite(info.blip, info.id)
              SetBlipDisplay(info.blip, 4)
              SetBlipScale(info.blip, 0.5)
              SetBlipColour(info.blip, info.colour)
              SetBlipAsShortRange(info.blip, true)
              BeginTextCommandSetBlipName("STRING")
              AddTextComponentString(info.title)
              EndTextCommandSetBlipName(info.blip)
            end
        end)
