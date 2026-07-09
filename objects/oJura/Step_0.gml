if (place_meeting(x,y, oPlayer) && keyboard_check_pressed(ord("E")))
	{
		if (global.JuraMet = false)
		{
			startDialogue("Jura first");
			global.JuraMet = true
		}
		else
		{
			var dialogueNumber
			dialogueNumber = floor(random_range(1,8))
			
			if (dialogueNumber == 1)
			{
				startDialogue("Jura gre 1");
			}
			else if (dialogueNumber == 2)
			{
				startDialogue("Jura gre 2");
			}
			else if (dialogueNumber == 3)
			{
				startDialogue("Jura gre 3");
			}
			else if (dialogueNumber == 4)
			{
				startDialogue("Jura gre 4");
			}
			else if (dialogueNumber == 5)
			{
				startDialogue("Jura gre 5");
			}
			else if (dialogueNumber == 6)
			{
				startDialogue("Jura gre 6");
			}
			else if (dialogueNumber == 7)
			{
				startDialogue("Jura gre 7");
			}
			else
			{
				startDialogue("Jura gre 8");
			}
		}
	}