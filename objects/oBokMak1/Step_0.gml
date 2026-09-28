/*var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (point_in_rectangle(
    mx, my,
    gui_x - gui_w / 2,
    gui_y - gui_h / 2,
    gui_x + gui_w / 2,
    gui_y + gui_h / 2
))
{

if (mouse_check_button_pressed(mb_left) && oJournal.pageMain)
    {
		oJournal.pageMain = false;
		oJournal.pagePages = false;
		oJournal.pageQuest = true;
    }
}*/


// Step event
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(_mx, _my, btn1.x, btn1.y, btn1.x + btn1.w, btn1.y + btn1.h)) {
        show_debug_message("Button 1 clicked");
		
		oJournal.pageMain = false;
		oJournal.pagePages = false;
		oJournal.pageQuest = true;
    }
    if (point_in_rectangle(_mx, _my, btn2.x, btn2.y, btn2.x + btn2.w, btn2.y + btn2.h)) {
        show_debug_message("Button 2 clicked");
		
		oJournal.pageMain = false;
		oJournal.pageQuest = false;
		oJournal.pagePages = true;
    }
}