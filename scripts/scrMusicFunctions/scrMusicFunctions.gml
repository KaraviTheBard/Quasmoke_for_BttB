//_song => set to anz song, even noone!
//_fadeOutCurrentSong => time the current song will take to fade out
//_fadeIn => time the target song will take to fade in
function set_song_ingame(_song, _fadeOutCurrentSong = 0, _fadeIn)
{
	with(oMusicManager)
	{
		targetSongAsset = _song;
		endFadeOutTime = _fadeOutCurrentSong;
		startFadeInTime = _fadeIn;
	}
}