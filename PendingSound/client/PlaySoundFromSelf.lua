function PlaySoundFromSelf(sound, resource, volume)
    local plyPed = GetPlayerPed(-1)
    local plyPos = GetEntityCoords(plyPed)

    TriggerServerEvent("PendingSound:PlayLocalSound", plyPos, sound, resource, volume)
end
exports("PlaySoundFromSelf", PlaySoundFromSelf)
