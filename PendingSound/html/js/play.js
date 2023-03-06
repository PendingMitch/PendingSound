window.addEventListener("message", function (event) {
  if (event.data.type !== "PlaySound") return;

  if (!event.data?.audioFile) {
    console.error("Need event information: audioFile");
    return null;
  }

  let id = Audios.length;
  let url = event.data.audioFile;

  if (!url.includes("http")) url = `./sounds/${event.data.audioFile}`;
  let volume = event.data?.volume;

  playAudio(id, url, volume);
});

function playAudio(id, audioFile, volume) {
  if (typeof id !== "number") {
    console.error(`id is type ${typeof id}. Must be a number.`);
    return null;
  }
  if (typeof audioFile !== "string") {
    console.error(`audioFile is type ${typeof audioFile}. Must be a string.`);
    return null;
  }

  if (typeof volume !== "number") volume = 1;

  Audios[id] = new Audio(audioFile);
  Audios[id].volume = volume;
  Audios[id].play();

  Audios[id].addEventListener("ended", function () {
    Audios.splice(id, 1);
  });

  console.log(`Now playing an audio named ${audioFile} under id ${id}`);
}
