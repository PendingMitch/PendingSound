function PlaySoundURL(sound, volume)
	if type(volume) ~= "number" then
		volume = 1;
	end;
	SendNUIMessage({
		type = "PlaySound",
		audioFile = sound,
		volume = volume
	});
end;
exports("PlaySoundURL", PlaySoundURL)

RegisterNetEvent("PendingSound:PlaySoundURL")
AddEventHandler("PendingSound:PlaySoundURL", PlaySoundURL)


function PlaySound(sound, resource, volume)
	PlaySoundURL(ConvertToHTTPSString(sound, resource), volume)
end
exports("PlaySound", PlaySound);

RegisterNetEvent("PendingSound:PlaySound")
AddEventHandler("PendingSound:PlaySound", PlaySound)