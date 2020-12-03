

switch(nazi_status)
{
	
	case BEHAVIOR.IDLE:
	
		//Stopping all progress
		halt_movement();
		fire_delay = 0;
		direction = 0;
		
		//Checking for moving to other states
		var nearest_soviet = instance_nearest(x,y,obj_soldier);
		var distance_soviet = distance_to_object(nearest_soviet);
		//ctivation_radius

		if(distance_soviet <= activation_radius_)
		{
			 if(hasgun)nazi_status = BEHAVIOR.FIRE;
		}
		//checking for gun
		if(!hasgun){
			var nearest = instance_nearest(x,y,obj_gun);
			var distance_ = distance_to_object(nearest);
			
		
			if(distance_ <= grab_radius)
			{
				//Run to gun	
				
				direction = point_direction(x,y,nearest.x,nearest.y);
				//hsp = lengthdir_x(grab_speed,direction);
				//vsp = lengthdir_y(grab_speed,direction);
				
				move_towards_point(nearest.x,nearest.y,grab_speed);
			}
			if(distance_ <= 5)
			{
				speed=0;
				//Equip gun
				with(nearest)
				{
					owner = other.id;
				}
				hasgun = true;
				my_gun = nearest;
				nazi_status = BEHAVIOR.IDLE;
			}
		}
	break;
	
	case BEHAVIOR.FIRE:

		nearest_soviet_ = instance_nearest(x,y,obj_soldier);
		distance_soviet_ = distance_to_object(nearest_soviet_);
		if(distance_soviet_ <= activation_radius_)
		{
			set_firing_location(nearest_soviet_.x,nearest_soviet_.y);
		    focus_timer = focus_timer_max;
		} else {
		    focus_timer--;
		    if(focus_timer <= 0)
		    {
		       firing_locationx = -1;
			   firing_locationy = -1; 
		    }
		    
		    
		}
		
		//constant fire unless otherwise
		if(firing_locationx != -1) && (firing_locationy != -1)
		{
			fire_delay--;
			if(fire_delay <= 0)
			{
			    direction = point_direction(x,y,firing_locationx,firing_locationy);
				if(hasgun)fire_bullet();
				fire_delay = fire_delay_max;
			}
		}
			
		
		
		
	
	break;
	
	
	default:
		nazi_status = BEHAVIOR.IDLE;
	break;
}


if(my_gun != -4)&& (my_gun.owner != id) hasgun=false;






collision_wall();
collision_cover();
//x+=hsp;
//y+=vsp;