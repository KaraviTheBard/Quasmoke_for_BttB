if (place_meeting(x,y, oPlayer) && keyboard_check_pressed(ord("E")))
	{
		if (global.VlastaMet = false)
		{
			startDialogue("Vlasta first");
			global.VlastaMet = true
		}
		else
		{
			var dialogueNumber
			dialogueNumber = floor(random_range(1,8))
			
			if (dialogueNumber == 1)
			{
				startDialogue("Vlasta gre 1");
			}
			else if (dialogueNumber == 2)
			{
				startDialogue("Vlasta gre 2");
			}
			else if (dialogueNumber == 3)
			{
				startDialogue("Vlasta gre 3");
			}
			else if (dialogueNumber == 4)
			{
				startDialogue("Vlasta gre 4");
			}
			else if (dialogueNumber == 5)
			{
				startDialogue("Vlasta gre 5");
			}
			else if (dialogueNumber == 6)
			{
				startDialogue("Vlasta gre 6");
			}
			else
			{
				startDialogue("Vlasta gre 7");
			}
		}
	}