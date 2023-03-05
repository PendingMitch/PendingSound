# PendingSound
A simple utility resource to allow you to play sounds to your clients.

---

This utility resource is intended to create a simpler, and modular way for sound components to be played to the clients on your server.

--- 

## Play a sound

1. Add `ensure PendingSound` to your server.cfg **BEFORE** any resources with sound playing through PendingSound. 
2. Create or edit a resource that is above the "cerelean" FX Version. See [Resource Manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/resource-manifest/#fx-version-cerulean-2020-05) for more information.
3. Add the sound files that you wish to 
4. Add the following in your `__resource.lua` file, replacing the sound file names with the ones that you will use. There is support for all sound files that can be played through HTML and FiveM's NUI system. !! Ensure that you add the file extension name at the end, and any folder directories that may be before the sound file itself !! 
```lua 
dependency 'PendingSound'
files {
  "sound1.ogg",
  "sound2.ogg"
}
```
4. Use [PlaySound](/#play-sound) export.
