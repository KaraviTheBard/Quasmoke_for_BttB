if (keyboard_check_pressed(ord("J")) && global.journalOpened == false)
	{
		global.journalOpened = true
		pageMain = true
	}
	else if (keyboard_check_pressed(ord("J")) && global.journalOpened == true)
	{
		pageMain = false;
		pageQuest = false;
		pagePages = false;
		global.journalOpened = false;

	}
	

	
	