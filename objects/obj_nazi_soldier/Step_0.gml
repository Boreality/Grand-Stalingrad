
switch(nazi_status)
{
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
	
	case BEHAVIOR.IDLE:
	
		//Stopping all progress
		halt_movement();
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
	
	case BEHAVIOR.FIRE:
		var nearest_soviet = instance_nearest(x,y,obj_soldier);
		fire_bullet();
	
	break;
	
	default:
		nazi_status = BEHAVIOR.IDLE;
	break;
}








collision_wall();
collision_cover();
x+=hsp;
y+=vsp;