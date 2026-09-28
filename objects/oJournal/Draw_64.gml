	if (pageMain == true)
	{
		draw_sprite(sJournal, 0, x + 550, y - 50);
		//draw_sprite(sBokMak1, 0, x + 650, y - 50);
		//draw_sprite(sBokMak2, 0, x + 720, y - 35);		
	} 
	else if (pageQuest == true)
	{
		draw_sprite(sJournal, 1, x + 550, y - 50);
	}
	else if (pagePages == true)
	{
		draw_sprite(sJournal, 2, x + 550, y - 50);
	}