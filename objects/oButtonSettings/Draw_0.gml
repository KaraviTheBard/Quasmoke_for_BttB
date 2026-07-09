draw_self();

if (menu_open) {
    draw_sprite(sTextBox, 0, 570, 440);
	draw_set_font(fMenus);
	draw_set_color(c_white);
	draw_text(444,290, "Volume");
	draw_text(444,360, "Darkness");
	draw_text(444,430, "Speed");
	draw_text(444,500, "Credits");
}
