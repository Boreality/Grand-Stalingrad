x = mouse_x;
y = mouse_y;

lclick = mouse_check_button_pressed(mb_left);
rclick = mouse_check_button_pressed(mb_right);
key_escape = keyboard_check_pressed(vk_escape);
key_middlemouse = mouse_check_button(mb_middle);
key_fire = keyboard_check_pressed(ord("B"));
key_duck = keyboard_check_pressed(ord("F"));


if(!instance_exists(selected)) selected = noone;

if(lclick)  && (place_meeting(x,y,obj_soldier))
{
	selected = collision_point(x,y,obj_soldier,false,true)
}
if(key_escape) or (key_middlemouse)
{
	cursor_state = mode.cursor;	
	selected = noone;
}

switch(cursor_state)
{
	case mode.cursor:
		image_index = 0;
		if(rclick)
		{
			if(selected != noone)
			{
				selected.order_position_x = id.x;
				selected.order_position_y = id.y;
				selected.soldier_state = status.movement;
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
		
		if(rclick) && (selected != noone) && (selected.available)
		{
			with(selected)
			{
    			firing_location_x = other.x;
    			firing_location_y = other.y;
    			soldier_state = status.fire;
			}
		}
	break;
	case mode.grab:
		image_index = 2;
		if(rclick) && (selected != noone) && (!selected.hasgun)
		{
			if(collision_circle(x,y,30,selected,false,true))
			{
				grab_object = collision_point(x,y,obj_gun,false,true)
				with(grab_object)
				{
					owner = obj_cursor.selected;	
					with(obj_cursor.selected) hasgun = true;
				}
			}
		}
		if(!place_meeting(x,y,obj_gun)) cursor_state = mode.cursor; grab_object = noone;
	break;
	
}
//Mode SHortcuts
if(key_fire) cursor_state = mode.target;
if(key_fire) with(selected) soldier_state = status.duck;




