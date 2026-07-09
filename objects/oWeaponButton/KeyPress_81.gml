//when you press Q, the sword attack path will begin for 150 frames
//if it's not the player's turn, it won't do anything
if (global.playerTurn)
{	
	global.swordAttack = true;
	image_speed = 1;
	alarm[0] = 150;
	path_start(pSlash_1, 10, path_action_stop, false);}
	else
	{
		
	}