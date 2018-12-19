x = mouse_x;
y = mouse_y;

cursor_input();

if(lclick)
{
	rect_startx = x;
	rect_starty = y;
	
	if(place_meeting(x,y,obj_soldier))
	{
	    if(ds_exists(global.selected,))
	    {
	    	ds_list_add(global.selected,collision_point(x,y,obj_soldier,false,true));
	    	//global.selected = collision_point(x,y,obj_soldier,false,true);
	    }
	    else
	    {
	        global.selected = ds_list_create();
	        ds_list_add(global.selected,collision_point(x,y,obj_soldier,false,true));
	    }
	}
	else
	{
	    ds_list_destroy(global.selected);
	}
}
//Creating a box to select multiple soldiers

if(lclick_hold) large_selecting = true; 

if(lclick_release)
{
	instance_create_layer(x,y,"GUI",obj_largeselect);
	large_selecting = false;
}

deselecting_auto();


switch(cursor_state)
{
	case mode.cursor:
		image_index = 0;
		//Moving
		if(rclick) && (!place_meeting(x,y,obj_wall)) && (!place_meeting(x,y,obj_cover))
		{
			if(selected_full())
			{	
				move_circle_create();
				var i = 0;
				repeat(ds_list_size(global.selected))
				{
					//with(global.selected)
					with(ds_list_find_value(global.selected,i))
					{
						order_position_x = other.x;
						order_position_y = other.y;
					
						soldier_state = status.movement;
					}
					i++;
				}
			}
		}
		//Grab mode switch
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
		
		if(rclick) && (selected_full())// && (global.selected.available)
		{
			var i = 0;
			repeat(ds_list_size(global.selected))
			{
					
				//with(global.selected)
				with(ds_list_find_value(global.selected,i))
				{
					firing_location_x = other.x;
    				firing_location_y = other.y;
    				soldier_state = status.fire;
				}
				i++;
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
//if(key_fire) with(global.selected) soldier_state = status.duck;




