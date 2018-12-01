/// @desc
switch(soldier_state)
{
	case status.movement:
		sprite_index = spr_soldier;
		reset_movement_check = true; 
		
		if(order_position_full()) // if has desitnation
		{
			direction = point_direction(x,y,order_position_x,order_position_y);
			hsp = lengthdir_x(3,direction);
			vsp = lengthdir_y(3,direction);
			//speed = 4;
			available = false;
			
			if(point_in_circle(x,y,order_position_x,order_position_y,30))
			{
				halt_movement();
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
		reset_movement_stage();

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
					fire_bullet();
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
if(selected_empty()) highlighted = false;
if(global.selected == id) highlighted = true;

collision_wall();
collision_cover();

x += hsp;
y += vsp;


