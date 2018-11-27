/// @desc
switch(soldier_state)
{
	case status.movement:
		sprite_index = spr_soldier;
		reset_movement_check = true; 
		
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
	   
	   //If selsected and firing, stop?!
	    //Canceling traveling stage
	    if(reset_movement_check)
	    {
    		speed = 0;
    		direction = 0;
    		order_position_x = -1;
            order_position_y = -1;
			firing_location_x = -1;
			firing_location_y = -1;
    		available = true;   
    		reset_movement_check = false;
	    }
		
		
		//SHooty code
		if(hasgun)
		{
			sprite_index = spr_soldier_fire;
			if(firing_location_x != -1) and (firing_location_y != -1)
			{
				firing_delay--;
				if(firing_delay <= 0)
				{
					direction = point_direction(x,y,firing_location_x,firing_location_y)+ random_range((-other.bullet_offset + other.aim),(other.bullet_offset-other.aim));
					with(instance_create_layer(x,y,"Soldiers",obj_bullet))
					{
						direction = other.direction;
						image_angle = direction ;
						speed = 10;
						owner_gun = other.my_gun;
						owner_soldier = other.id;
						
					}
					//
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