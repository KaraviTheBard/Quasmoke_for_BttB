if (global.pause == true)
	{
		draw_set_alpha(0.85);
		draw_set_colour(make_colour_rgb(12, 20, 54));
		draw_rectangle(0, 0,display_get_gui_width(),display_get_gui_height(),false);


		draw_set_alpha(1);
		draw_set_colour(c_white);
		
		draw_sprite(sPauseMenu,0,x + 300 ,y)
	}