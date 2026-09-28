function scrPlayerStateStop()
{
	show_debug_message("STOP STATE");
	
    // Stop movement
    xspd = 0;
    yspd = 0;
	
	hspeed = 0;
	vspeed = 0;

    //reset animation
    image_speed = 0;
	image_index = 0;

    // Exit condition
    if (!global.dialogueActive) 
	{
		
        state = scrPlayerStateMove;
    }
	
	    if (!global.pause) 
	{
        state = scrPlayerStateMove;
    }
		    if (!global.journalOpened) 
	{
        state = scrPlayerStateMove;
    }
}