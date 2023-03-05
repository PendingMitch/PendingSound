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
    print("Join PendingDevelopment Discord for assistance: https://pending-medical-help.vercel.app/discord")
end);
function PlaySound(soundName, volume)
	if type(volume) ~= "number" then
		volume = 1;
	end;
	if type(soundName) ~= "string" then
		return;
	end;
	SendNUIMessage({
		type = "PlaySound",
		audioFile = soundName,
		volume = volume
	});
end;
exports("PlaySound", PlaySound);
function ConvertToHTTPSString(SoundFile, ResourceName)
	if type(SoundFile) ~= "string" or type(ResourceName) ~= "string" then
		print(SoundFile, "or", ResourceName, "is not a string value. ConvertToHTTPSString");
		return "SOUND/RESOURCE NAME ERROR - NOT A STRING.";
	end;
	return "https://cfx-nui-" .. ResourceName .. "/" .. SoundFile;
end;
