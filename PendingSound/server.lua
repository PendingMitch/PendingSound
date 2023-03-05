function PlaySound(src, sound, resource, volume)
    TriggerClientEvent("PendingSound:PlaySound", src, sound, resource, volume)
end
exports("PlaySound", PlaySound);