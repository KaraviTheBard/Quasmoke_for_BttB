var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (point_in_rectangle(
    mx, my,
    gui_x - gui_w / 2,
    gui_y - gui_h / 2,
    gui_x + gui_w / 2,
    gui_y + gui_h / 2
))
{
    if (mouse_check_button_pressed(mb_left) && global.pause)
    {
		room_goto(rmMainMenu);
		global.pause = false;
    }
}