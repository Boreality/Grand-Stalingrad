/// @desc
switch(soldier_state)
{
	case status.movement:
		sprite_index = spr_soldier;
		if(order_position_x != -1) && (order_position_y != -1) // if has desitnation
		{
			direction = point_direction(x,y,order_position_x,order_position_y);
			speed = 4;
			available = false;
			if(point_in_circle(x,y,order_position_x,order_position_y,3))
			{
				speed = 0;
				direction = 0;
				order_position_x = -1;
				order_position_y = -1;
				available = true;
			}
		}
	break;
	case status.fire:
		if(hasgun)
		{
			sprite_index = spr_soldier_fire;
			if(firing_location_x != -1) and (firing_location_y != -1)
			{
				firing_delay--;
				if(firing_delay <= 0)
				{
					direction = point_direction(x,y,firing_location_x,firing_location_y);
					with(instance_create_layer(x,y,"Soldiers",obj_bullet))
					{
						direction = other.direction;
						image_angle = direction;
						speed = 10;
					}
					firing_delay = firing_delay_max;
				}
			}
		}
	break;
	case status.duck:
		sprite_index = spr_soldier_duck;
	break;

}
if(obj_cursor.selected == noone) highlighted = false;
if(obj_cursor.selected == id) highlighted = true;