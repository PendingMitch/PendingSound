function PlaySound(src, sound, resource, volume)
    TriggerClientEvent("PendingSound:PlaySound", src, sound, resource, volume)
end
exports("PlaySound", PlaySound);

function StopSound(src, sound, resource)
    TriggerClientEvent("PendingSound:StopSound", src, sound, resource)
end
exports("StopSound", StopSound)