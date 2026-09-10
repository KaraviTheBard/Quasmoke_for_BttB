//soundtrack
if (room == rmMurkov && global.current_music != snMurkov)
{
        audio_stop_all();
		global.current_music = snMurkov;
		audio_play_sound(snMurkov, 10, true);
}

if (room == rmRoadtoWv)
{
	if (global.current_music == snMyso)
		{
	        audio_stop_all();
	        global.current_music = snMurkov
			audio_play_sound(snMurkov, 8, true);
		}

}


//battle tracks
if ((global.enemyTurn == true || room == rmBmyso) && global.current_music != snMyso)
{
	audio_pause_all();
	global.current_music = snMyso;
	audio_play_sound(snMyso, 10, true);
}
else if ((global.RafaeloTurn == true || room == rmEArafaelo) && global.current_music != snMyso)
{
	audio_pause_all();
	global.current_music = snMyso;
	audio_play_sound(snMyso, 10, true);
}
else if ((global.KvakikTurn == true || room == rmEAkvakik) && global.current_music != snMyso)
{
	audio_pause_all();
	global.current_music = snMyso;
	audio_play_sound(snMyso, 10, true);
	
}
else
{
	
}



if (room == rmMainMenu && global.current_music != snFAVOURITE)
{
        audio_stop_all();
        global.current_music = snFAVOURITE
		audio_play_sound(snFAVOURITE, 10, true);
}

