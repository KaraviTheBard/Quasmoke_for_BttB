var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (mouse_check_button_pressed(mb_left) && global.journalOpened) {
    if (point_in_rectangle(_mx, _my, btn1.x, btn1.y, btn1.x + btn1.w, btn1.y + btn1.h)) {
		oJournal.pageMain = false;
		oJournal.pagePages = false;
		oJournal.pageQuest = true;
    }
    if (point_in_rectangle(_mx, _my, btn2.x, btn2.y, btn2.x + btn2.w, btn2.y + btn2.h)) {
		oJournal.pageMain = false;
		oJournal.pageQuest = false;
		oJournal.pagePages = true;
    }
}