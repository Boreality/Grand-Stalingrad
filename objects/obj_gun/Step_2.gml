if(!instance_exists(owner)) owner = noone;

if(owner != noone)
{
	x = owner.x;
	y = owner.y;
	
//Turning the gun in the correct direction!
	//Calculate the angle which is closer accounting for + and -
	angle_buffer = owner.direction;
	
	var sol1 = angle_buffer - 360;
	var sol2 = angle_buffer;
	
	sol1 = abs(sol1);
	
	if(sol1 < sol2) angle_buffer = -sol1;	
	else angle_buffer = sol2;
	
	
	// continuously adding ot image angle bad idea?
	
	////calc difference between image angle and angle_buffer, make it the target + image_angle
	//if((image_angle <= 0) && (angle_buffer < 0)) or ((image_angle >= 0) && (angle_buffer > 0))
	//{
	//	moveto = image_angle - angle_buffer;
	//	moveto += image_angle;
	//}
	//else
	//{
	//	if((image_angle < 0) && (angle_buffer > 0))	or ((image_angle > 0) && (angle_buffer < 0))
	//	{
	//		moveto = image_angle + angle_buffer;
	//		moveto += image_angle
	//	}
	//}
	
	image_angle = Approach(image_angle,angle_buffer,6); //value, destination, amount. CHange angle_buffer to moveto if get above working

//Flipping Gun over
	if((image_angle <270) && (image_angle > 90)) or ((image_angle < -90)&&(image_angle > -270))
	{
		image_yscale = -1;	
		owner.image_xscale = -1;
	}
	else image_yscale = 1; owner.image_xscale = 1;
	
	
	//Dont make gun image angle go absurdly high or low while moving.
	//if(image_angle != 0)
	//{
	//	image_angle = clamp(image_angle,50,310);
	//	image_angle = clamp(image_angle,140,220);
	//}
	
	//bug that the gun will flip around in dumb ways
}

