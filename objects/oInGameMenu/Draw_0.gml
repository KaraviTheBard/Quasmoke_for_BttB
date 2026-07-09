if (menu_open) {
    draw_sprite(sTextBox, 0, oPlayer.x, oPlayer.y);
	draw_set_font(fMenus);
	draw_set_color(c_white);
	draw_text(oPlayer.x -140, oPlayer.y - 150, "Settings");
	draw_text(oPlayer.x -140, oPlayer.y - 80, "To Main Menu");
	draw_text(oPlayer.x -140, oPlayer.y - 10, "Save");
	draw_text(oPlayer.x -140, oPlayer.y + 60, "Quit");
}
