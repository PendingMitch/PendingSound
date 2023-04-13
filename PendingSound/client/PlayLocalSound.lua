function PlayLocalSound(pos, sound, resource, volume)
    if tonumber(pos["x"]) == nil or tonumber(pos["y"]) == nil or
        tonumber(pos["z"]) == nil then return end

    local x1, y1, z1 = table.unpack(pos) -- Coords of the sound
    local x2, y2, z2 = table.unpack(GetEntityCoords(PlayerPedId())) -- Player coords

    SendNUIMessage({
        type = "PlayLocalSound",
        audioFile = ConvertToHTTPSString(sound, resource),
        volume = volume,
        location = pos
    });

end
exports("PlayLocalSound", PlayLocalSound)

Citizen.CreateThread(function()
    while true do
        SendNUIMessage({
            type = "LocationUpdate",
            location = GetEntityCoords(PlayerPedId())
        })

        Citizen.Wait(0)
    end
end)

RegisterNetEvent("PendingSound:PlayLocalSound")
AddEventHandler("PendingSound:PlayLocalSound", PlayLocalSound)