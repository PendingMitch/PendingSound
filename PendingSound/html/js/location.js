window.addEventListener("message", function (event) {
  if (event.data.type !== "LocationUpdate") return;

  let { location } = event.data;

  PlayerLocation = location;
  Audios.forEach((Audio) => {
    if (Audio.location) Audio.volume = GetUpdatedVolume(Audio.location)
  })
});

function GetDistanceBetweenTwoPoints(x0, y0, z0, x1, y1, z1) {
  distanceX = Math.pow(x0 - x1, 2);
  distanceY = Math.pow(y0 - y1, 2);
  distanceZ = Math.pow(z0 - z1, 2);
  total_distance = Math.sqrt(distanceX + distanceY + distanceZ);
  return total_distance;
}
