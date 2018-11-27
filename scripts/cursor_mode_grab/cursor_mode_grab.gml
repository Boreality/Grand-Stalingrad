image_index = 2;
		if(rclick) && (selected_full())
		{
			if(collision_circle(x,y,30,global.selected,false,true))
			{
				if(!global.selected.hasgun)
				{
					grab_object = collision_point(x,y,obj_gun,false,true)
					with(grab_object)
					{
						owner = global.selected;	
						with(global.selected) hasgun = true;
					}
				}
			}
			else
			{
				with(global.selected)
				{
					order_position_x = other.x;
					order_position_y = other.y;
					soldier_state = status.movement;
				}
			}
		}