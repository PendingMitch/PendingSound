function stopAudio(audio) {
  if (typeof audio?.pause !== "function") {
    console.error("audio is not an audio type.");
    return null;
  }

  audio.pause();
  if (Audios.includes(audio)) {
    Audios.splice(id, 1);
  }
}
