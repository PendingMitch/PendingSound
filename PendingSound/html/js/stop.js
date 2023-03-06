window.addEventListener("message", function (event) {
  if (event.data.type !== "StopSound") return;

  if (!event.data?.audioFile) {
    console.error("Need event information: audioFile");
    return null;
  }

  Audios.forEach((Audio) => {
    if (event.data.audioFile == getAudioSrc(Audio)) {
      stopAudio(Audio);
    }
  });
});

function stopAudio(audio) {
  if (typeof audio?.pause !== "function") {
    console.error("audio is not an audio type.");
    return null;
  }

  audio.pause();
}

function getAudioSrc(audio) {
  if (!audio?.src) {
    console.error("audio is not an audio type.");
    return null;
  }
  return audio.src;
}
