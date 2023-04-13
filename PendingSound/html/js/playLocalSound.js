window.addEventListener("message", function (event) {
  if (event.data.type !== "PlayLocalSound") return;

  if (!event.data?.audioFile) {
    console.error("Need event information: audioFile");
    return null;
  }

  let id = Audios.length;
  let url = event.data.audioFile;

  let location = event.data?.location || { x: 0, y: 0, z: 0 };

  playAudio(id, url, GetUpdatedVolume(location));
  Audios[id].location = location;
});

function GetUpdatedVolume(Position) {
  let Distance = GetDistanceBetweenTwoPoints(
    PlayerLocation.x,
    PlayerLocation.y,
    PlayerLocation.z,
    Position.x,
    Position.y,
    Position.z
  );
  
  let volume = ((1 / Math.sqrt(Distance)) * 0.8) - 0.1;
  volume = parseFloat(volume.toFixed(4))

  if (volume > 1) return 1;

  if (volume < 0) return 0;

  return volume;
}
