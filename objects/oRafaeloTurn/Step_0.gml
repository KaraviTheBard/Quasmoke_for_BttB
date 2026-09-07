//the colour sequences
if (showingSequence) 
{
    showTimer++;

    if (state == "flash") 
	{
        currentColour = enemySequence[showIndex]; // pick which to show

        if (showTimer >= flashTime) 
		{
            currentColour = -1; // turn off
            showTimer = 0;
            state = "gap";
        }
    }
    else if (state == "gap") 
	{
        if (showTimer >= gapTime) 
		{
            showTimer = 0;
            showIndex++;

            if (showIndex >= sequenceLength) 
			{
                // finished showing all
                showingSequence = false;
                playerTurn = true;
                playerIndex = 0;
                currentColour = -1; // off
            } 
			else 
			{
                state = "flash";
            }
        }
    }
}

//checking what colours the player pressed
	function CheckPlayerInput(colour) 
	{
	    if (colour == enemySequence[playerIndex]) 
		{
	        playerIndex++;
        
	        if (playerIndex >= sequenceLength) 
			{
	            // success!
	            playerTurn = false;
				showingSequence = false
				global.RafaeloTurn = false
				
				room_goto(rmBrafaelo)
	        }
	    } 
		else 
		{
	        // failure
	        playerTurn = false;
			showingSequence = false
			global.RafaeloTurn = false
			global.playerHit = true
			
			room_goto(rmBrafaelo)
	    }
	}

