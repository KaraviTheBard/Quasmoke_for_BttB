function scrPlayerStateMove()
{
	
	
	show_debug_message("MOVE STATE");
	
	    // Check pause FIRST
    if (global.pause || global.dialogueActive)
    {
        state = scrPlayerStateStop;
        exit;
    }
	
	rightKey = keyboard_check(vk_right) || keyboard_check(ord("D"))
	upKey = keyboard_check(vk_up) || keyboard_check(ord("W"))
	leftKey = keyboard_check(vk_left) || keyboard_check(ord("A"))
	downKey = keyboard_check(vk_down) || keyboard_check(ord("S"))

	//get xspd aand yspd
	xspd = (rightKey - leftKey) * moveSpeed;
	yspd = (downKey - upKey) * moveSpeed;


//set sprite
	if yspd == 0
	{
		if xspd > 0 {face = RIGHT};
		if xspd < 0 {face = LEFT};
	}
	
	if xspd > 0 && face == LEFT {face = RIGHT};
	if xspd < 0 && face == RIGHT {face = LEFT};
	
	
	if xspd == 0
	{
		if yspd > 0 {face = DOWN};
		if yspd < 0 {face = UP};
	}

	if yspd > 0 && face == UP {face = DOWN};
	if yspd < 0 && face == DOWN {face = UP};

	sprite_index = sprite[face];

	//collisions
	if place_meeting(x + xspd, y, oWall)
		{
			xspd = 0;
		}

	if place_meeting(x, y +  yspd, oWall)
		{
			yspd = 0;	
		}

	//move the player
	x += xspd;
	y += yspd;

	image_speed = 1;

	//animate
	if xspd == 0 && yspd == 0
	{
		image_index = 0;	
	}
	
	//change state
	if (global.dialogueActive)
	{
		state = scrPlayerStateStop;
	}
	
		if (global.pause)
	{
		state = scrPlayerStateStop;
	}
}