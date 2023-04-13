function PlayLocalSound(pos, sound, resource, volume)
    TriggerClientEvent("PendingSound:PlayLocalSound", -1, pos, sound, resource, volume)
end
exports("PlayLocalSound", PlayLocalSound);

RegisterNetEvent("PendingSound:PlayLocalSound")
AddEventHandler("PendingSound:PlayLocalSound", PlayLocalSound)