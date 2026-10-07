/// @desc Play the correct music

if room == rmRoadoutWv || room == rmWvCrossroad
{
	set_song_ingame(snRain, 70, 70);
}

if room == rmMainMenu
{
	set_song_ingame(snFAVOURITE, 30, 40);
}

if room == rmMurkov || room == rmRoadtoWv
{
	set_song_ingame(snMurkov, 60, 80);
}

if room == rmWetVillage || room == rmRoadtPlay
{
	set_song_ingame(snWalkTroughTown, 60, 60);
}

if room == rmPlayground
{
	set_song_ingame(snHappyTimes, 45, 30);
}

if room == rmWaterfall
{
	set_song_ingame(snCloud, 50, 70);
}

if room == rmBmyso || room == rmBkvakik
{
	set_song_ingame(snConflict, 40, 50)	
}