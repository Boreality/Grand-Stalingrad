image_index = 2;
		if(rclick) && ((selected_full()) && (ds_list_size(global.selected) == 1))
		{
			var soldier = ds_list_find_value(global.selected,0)
			if(collision_circle(x,y,30,soldier,false,true))
			{
				if(!soldier.hasgun)
					{
					grab_object = collision_point(x,y,obj_gun,false,true)
					with(grab_object)
					{
						owner = soldier;	
						with(soldier) hasgun = true;
					}
				}
			}
			else
			{
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
				//with(global.selected)
				//{
					
				//}
			}
		}