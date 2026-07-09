//if you click when touching oHitCircle, you hit the enemy
if (place_meeting(x, y, oHitCircle))
{
	show_debug_message("You are a sigma");
	global.enemyHit = true;
}