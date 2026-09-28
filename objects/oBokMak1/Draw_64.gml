/*if (oJournal.pageMain == true)
 {
		x = oJournal.x + 650;
		y = oJournal.y - 50;
		draw_sprite(sprite_index, image_index, oJournal.x + 650, oJournal.y - 50);
 }
 else
 {
	 
 }
*/

// Draw GUI event

	if (oJournal.pageMain == true)
	{
		draw_sprite(sBokMak1, 0, btn1.x, btn1.y);
		draw_sprite(sBokMak2, 0, btn2.x, btn2.y);
	}