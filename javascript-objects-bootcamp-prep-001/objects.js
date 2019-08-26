var playlist = new Object({ 'Michael Jackson' : "Billy Jean" });

function updatePlaylist(playlist, artistName, songTitle) {
  return playlist[artistName] = songTitle;
}

function removeFromPlaylist(playlist, artistName) {
  delete playlist[artistName];
  return playlist;
}
