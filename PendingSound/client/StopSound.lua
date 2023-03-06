function StopSoundURL(sound)
	SendNUIMessage({
		type = "StopSound",
		audioFile = sound,
	});
end
exports("StopSoundURL", StopSoundURL)

RegisterNetEvent("PendingSound:StopSoundURL")
AddEventHandler("PendingSound:StopSoundURL", StopSoundURL)


function StopSound(sound, resource)
	StopSoundURL(ConvertToHTTPSString(sound, resource))
end
exports("StopSound", StopSound)

RegisterNetEvent("PendingSound:StopSound")
AddEventHandler("PendingSound:StopSound", StopSound)