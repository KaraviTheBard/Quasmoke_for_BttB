if (global.playerHit)
{
	alarm[0] = 15;
	global.playerHit = false;
}

if (global.playerDead && alarm[1] <= 0)
{
	instance_create_layer(220, 100, "more", oPlayerDead);
	image_index = 0;
	alarm[1] = 150;
}