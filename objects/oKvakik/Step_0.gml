if (global.enemyHit)
{
	alarm[0] = 5 //shake
	alarm[1] = 25 //restart sprite
}

if (global.EnemyDead && alarm[2] <= 0)
{
	global.enemyTurn = false;
	image_index = 2;
	instance_create_layer(220, 100, "more", oEnemyDead);
	alarm[2] = 150; //start alarm to get out the room

}

if (global.GoHome)
{
	room_goto(rmRoadtoWv);
	oPlayer.x = 640;
	oPlayer.y = 1375;
}

/*
if (global.enemyTurn && global.EnemyDead = false)
{
	room_goto(rmEnemyAttack)
}
*/