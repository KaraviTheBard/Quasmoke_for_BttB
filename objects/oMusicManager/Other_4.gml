/// @desc Play the correct music

if room == rmMurkov || room == rmRoadtoWv || room == rmRoadoutWv
{
	set_song_ingame(snRain, 60, 20)
}

if room == rmMainMenu
{
	set_song_ingame(snFAVOURITE, 30, 60)	
}

if room == rmWetVillage
{
	set_song_ingame(snMurkov, 60, 60)
}