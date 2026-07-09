function scrPlayerStateStop()
{
    // Stop movement
    xspd = 0;
    yspd = 0;

    //reset animation
    image_speed = 0;
	image_index = 0;

    // Exit condition
    if (!global.dialogueActive) 
	{
        state = scrPlayerStateMove;
    }
}