
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
		var activation_radius = 150;
		if(distance_soviet <= activation_radius)
		{
			if(!incover) nazi_status = BEHAVIOR.TAKE_COVER;
			else nazi_status = BEHAVIOR.FIRE;
		}
	break;
	
	case BEHAVIOR.GRAB_GUN:
		var nearest = instance_nearest(x,y,obj_gun);
		var distance_ = distance_to_object(nearest);
		var accepted_radius = 100;
		
		if(distance_ <= accepted_radius)
		{
			//Run to gun	
			direction = point_direction(x,y,nearest.x,nearest.y);
			hsp = lengthdir_x(grab_speed,direction);
			vsp = lengthdir_y(grab_speed,direction);
		}
		if(distance_ <= 5)
		{
			//Equip gun
			with(nearest)
			{
				owner = other.id;
			}
			hasgun = true;
			my_gun = nearest;
			nazi_status = BEHAVIOR.IDLE;
		}
	
	
	
		
	break;
	
	case BEHAVIOR.FIRE:
			/*
			nearest_soviet_ = instance_nearest(x,y,obj_soldier);
			distance_soviet_ = distance_to_object(nearest_soviet_);
			if(distance_soviet_ <= activation_radius_)
			{
				update_timer--;
				if(update_timer <= 0) //&& (incover)
				{
					firing_locationx = nearest_soviet_.x;
					firing_locationy = nearest_soviet_.y;
					direction = point_direction(x,y,firing_locationx,firing_locationy);
					update_timer = update_timer_max;
				}
			}
			else
			{
				firing_locationx = -1;
				firing_locationy = -1;
				direction = 0;
			
			
			}
		*/
		
		
		
		
		
		
		
		update_timer--;
		if(update_timer <= 0) //&& (incover)
		{
			nearest_soviet_ = instance_nearest(x,y,obj_soldier);
			distance_soviet_ = distance_to_object(nearest_soviet_);
			if(distance_soviet_ <= activation_radius_)
			{
				firing_locationx = nearest_soviet_.x;
				firing_locationy = nearest_soviet_.y;
				direction = point_direction(x,y,firing_locationx,firing_locationy);
			}
			else
			{
				firing_locationx = -1;
				firing_locationy = -1;
				direction = 0;
			}
			update_timer = update_timer_max;
		}
		
		//constant fire unkess otherwise
		if(firing_locationx != -1) && (firing_locationy != -1)
		{
			fire_delay--;
			if(fire_delay <= 0)
			{
				fire_bullet();
				fire_delay = fire_delay_max;
			}
		}
			
		
		
		
	
	break;
	
	case BEHAVIOR.TAKE_COVER:
		nazi_status = BEHAVIOR.IDLE;
		
	
	break;
	
	default:
		nazi_status = BEHAVIOR.IDLE;
	break;
}








collision_wall();
collision_cover();
x+=hsp;
y+=vsp;