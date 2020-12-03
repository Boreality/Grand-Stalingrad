/// @description Firing

fire_delay--;
if(fire_delay <= 0)
{	
	with(instance_create_layer(x,y,"Guns",obj_bullet))
	{
		speed = bullet_speed;
		direction = other.direction + irandom_range(-other.bullet_spread,other.bullet_spread);
		image_angle = direction;
	}
	fire_delay = fire_delay_max;
}



// Inherit the parent event
//event_inherited();

