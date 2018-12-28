/// @desc Making Sprites Clickable

var fire_buttonx1 = fire_buttonx;
var fire_buttonx2 = fire_buttonx + 64;
var fire_buttony1 = fire_buttony;
var fire_buttony2 = fire_buttony + 64;
if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),fire_buttonx1,fire_buttony1,fire_buttonx2,fire_buttony2)) && (obj_cursor.lclick)
{
	
	if(selected_full())
	{
		
		var i = 0;
		repeat(ds_list_size(global.selected))
		{
			
			with(ds_list_find_value(global.selected,i))
			{
				soldier_state = status.fire; 
			}
			i++;
		}
	}
	obj_cursor.cursor_state = mode.target;
	
}

var duck_buttonx1 = duck_buttonx;
var duck_buttonx2 = duck_buttonx + 64;
var duck_buttony1 = duck_buttony;
var duck_buttony2 = duck_buttony + 64;
if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),duck_buttonx1,duck_buttony1,duck_buttonx2,duck_buttony2)) && (obj_cursor.lclick)
{
	
	if(selected_full())
	{
	    var i_ = 0;
		repeat(ds_list_size(global.selected))
		{
				
			with(ds_list_find_value(global.selected,i_))
			{
				soldier_state = status.duck; 
			}
			i_++;
		}
	}
	
}
var info_buttonx1 = info_buttonx;
var info_buttonx2 = info_buttonx + 64;
var info_buttony1 = info_buttony;
var info_buttony2 = info_buttony + 64;
if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),info_buttonx1,info_buttony1,info_buttonx2,info_buttony2)) && (obj_cursor.lclick)
{
	if(selected_full())	
	{
		stat_block_create(70,500);
	}
}





