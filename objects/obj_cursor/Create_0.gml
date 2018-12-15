/// @desc
rect_startx = 0;
rect_starty = 0;

large_selecting = false;

grab_object = noone;

cursor_state = mode.cursor;
enum mode {
	cursor,
	target,
	grab
}