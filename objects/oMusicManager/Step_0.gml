if (room == rmMurkov && global.current_music != snMurkov)
{
        audio_stop_all();
        global.current_music = snMurkov;
		audio_play_sound(snMurkov, 10, true);
}

if (room == rmBmyso && global.current_music != snMyso)
{
	audio_pause_all();
	global.current_music = snMyso;
	audio_play_sound(snMyso, 10, true) 
}

/*
if (room == rmRoadtoWv && global.current_music != snMurkov)
{
        audio_stop_all();
        global.current_music = snMurkov
		audio_play_sound(snMurkov, 8, true);
}
*/

if (room == rmMainMenu && global.current_music != snFAVOURITE)
{
        audio_stop_all();
        global.current_music = snFAVOURITE
		audio_play_sound(snFAVOURITE, 10, true);
}

/*
if (global.EnemyDead)
	{
		audio_stop_all();
		audio_play_sound(snVictory, 10, false);	
	}
	
if (global.playerDead)
	{
		audio_stop_all();
		audio_play_sound(snDeath, 10, false);	
	}
*/