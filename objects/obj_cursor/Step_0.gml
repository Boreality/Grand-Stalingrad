x = mouse_x;
y = mouse_y;

lclick = mouse_check_button_pressed(mb_left);
rclick = mouse_check_button_pressed(mb_right);
key_escape = keyboard_check_pressed(vk_escape);
key_middlemouse = mouse_check_button(mb_middle);
key_fire = keyboard_check_pressed(ord("B"));
key_duck = keyboard_check_pressed(ord("F"));


if(!instance_exists(global.selected)) global.selected = noone;

if(lclick) && (place_meeting(x,y,obj_soldier))
{
	global.selected = collision_point(x,y,obj_soldier,false,true)
}
if(key_escape) or (key_middlemouse)
{
	cursor_state = mode.cursor;	
	global.selected = noone;
}

switch(cursor_state)
{
	case mode.cursor:
		image_index = 0;
		if(rclick)
		{
			if(selected_full())
			{	
				with(global.selected)
				{
					order_position_x = other.x;
					order_position_y = other.y;
					
					soldier_state = status.movement;
				}
			}
		}
		
		with(collision_point(x,y,obj_gun,false,true))//(collision_circle(x,y,2,obj_gun,false,true)) // if cursor touching gun 
		{
			if(owner == noone)
			{
				with(other)cursor_state = mode.grab;
			}
		}
	break;
	case mode.target:
		image_index = 1;
		
		if(rclick) && (selected_full()) && (global.selected.available)
		{
			with(global.selected)
			{
    			firing_location_x = other.x;
    			firing_location_y = other.y;
    			soldier_state = status.fire;
			}
		}
	break;
	case mode.grab:
		cursor_mode_grab();
		cursor_mode_grab_reset();
		
	break;
	
}
//Mode SHortcuts
if(key_fire) cursor_state = mode.target;
if(key_fire) with(global.selected) soldier_state = status.duck;




