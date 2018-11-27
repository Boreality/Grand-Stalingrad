/// @desc Making Sprites Clickable

var fire_buttonx1 = fire_buttonx;
var fire_buttonx2 = fire_buttonx + 64;
var fire_buttony1 = fire_buttony;
var fire_buttony2 = fire_buttony + 64;
if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),fire_buttonx1,fire_buttony1,fire_buttonx2,fire_buttony2)) && (obj_cursor.lclick)
{
	with(obj_cursor)
	{
		if(selected_full())global.selected.soldier_state = status.fire; 
		cursor_state = mode.target;
	}
}

var duck_buttonx1 = duck_buttonx;
var duck_buttonx2 = duck_buttonx + 64;
var duck_buttony1 = duck_buttony;
var duck_buttony2 = duck_buttony + 64;
if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),duck_buttonx1,duck_buttony1,duck_buttonx2,duck_buttony2)) && (obj_cursor.lclick)
{
	with(obj_cursor) 
	{
		if(selected_full()) global.selected.soldier_state = status.duck;
	}
}

