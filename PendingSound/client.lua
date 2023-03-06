AddEventHandler("onResourceStart", function(resourceName)
	if GetCurrentResourceName() ~= resourceName then
		return;
	end;
	print("The resource " .. resourceName .. " has been started.");
    print("____                _ _             ____                 _                                  _    ")
    print("|  _ \\ ___ _ __   __| (_)_ __   __ _|  _ \\  _____   _____| | ___  _ __  _ __ ___   ___ _ __ | |_ ")
    print("| |_) / _ \\ '_ \\ / _` | | '_ \\ / _` | | | |/ _ \\ \\ / / _ \\ |/ _ \\| '_ \\| '_ ` _ \\ / _ \\ '_ \\| __|")
    print("|  __/  __/ | | | (_| | | | | | (_| | |_| |  __/\\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ ")
    print("|_|   \\___|_| |_|\\__,_|_|_| |_|\\__, |____/ \\___| \\_/ \\___|_|\\___/| .__/|_| |_| |_|\\___|_| |_|\\__|")
    print("                               |___/                             |_|                             ")
    print("See other projects such as PendingMedical: https://pending-medical-help.vercel.app/")
    print("See the thread for support here - https://forum.cfx.re/t/pendingsound-a-simple-utility-resource-to-allow-you-to-play-sounds-to-your-clients/5039257")
end);

function PlaySound(sound, resource, volume)
	PlaySoundURL(ConvertToHTTPSString(sound, resource), volume)
end
exports("PlaySound", PlaySound);

RegisterNetEvent("PendingSound:PlaySound")
AddEventHandler("PendingSound:PlaySound", PlaySound)

function StopSound(sound, resource)
	SendNUIMessage({
		type = "StopSound",
		audioFile = ConvertToHTTPSString(sound, resource),
	});
end
exports("StopSound", StopSound)

RegisterNetEvent("PendingSound:StopSound")
AddEventHandler("PendingSound:StopSound", StopSound)

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

function ConvertToHTTPSString(SoundFile, ResourceName)
	if type(SoundFile) ~= "string" or type(ResourceName) ~= "string" then
		print(SoundFile, "or", ResourceName, "is not a string value. ConvertToHTTPSString");
		return "SOUND/RESOURCE NAME ERROR - NOT A STRING.";
	end;
	return "https://cfx-nui-" .. ResourceName:lower() .. "/" .. SoundFile:lower();
end;
