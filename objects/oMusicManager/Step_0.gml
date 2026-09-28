//Play the target song
if (songAsset != targetSongAsset)
{
	if (audio_is_playing(songInstance))
	{
		array_push(fadeOutInstances, songInstance);
		array_push(fadeOutInstaVolume, fadeInInstaVolume);
		array_push(fadeOutInstaTime, endFadeOutTime);
		
		songInstance = noone;
		songAsset = noone;
	}

	if array_length(fadeOutInstances) == 0
	{
		if (audio_exists(targetSongAsset))
			{
				songInstance = audio_play_sound(targetSongAsset, 10, true)
		
				audio_sound_gain(songInstance, 0, 0)
				fadeInInstaVolume = 0;
			}
		songAsset = targetSongAsset;
	}
}	


//Volume control

//Main song
if audio_is_playing(songInstance)
{
	
	if startFadeInTime > 0
		{
			if fadeInInstaVolume < 1 {fadeInInstaVolume += 1/startFadeInTime;} else fadeInInstaVolume = 1;	
		}
	else
		{
			fadeInInstaVolume = 1;	
		}
	
	audio_sound_gain(songInstance, fadeInInstaVolume * global.musicVolume, 0)
	
}


//fading songs out
for (var i = 0; i < array_length(fadeOutInstances); i++)
{
	if (fadeOutInstaTime[i] > 0)
	{
		if fadeOutInstaVolume[i] > 0 {fadeOutInstaVolume[i] -= 1/fadeOutInstaTime[i]; };
	}
	else
	{
		fadeOutInstaVolume[i] = 0;
	}
	
	audio_sound_gain(fadeOutInstances[i], fadeOutInstaVolume[i] * global.musicVolume, 0);
	
	if (fadeOutInstaVolume[i] <= 0)
	{
		if audio_is_playing(fadeOutInstances[i]) {audio_stop_sound(fadeOutInstances[i]); };
		array_delete(fadeOutInstances, i, 1);
		array_delete(fadeOutInstaVolume, i, 1);
		array_delete(fadeOutInstaTime, i, 1);
		i--;
	}
	
}