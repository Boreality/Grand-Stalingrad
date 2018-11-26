if(owner != noone)
{
	x = owner.x;
	y = owner.y;
	
//Turning the gun in the correct direction!
	angle_buffer = owner.direction;
	
	
	var sol1 = angle_buffer - 360;
	var sol2 = angle_buffer;
	
	sol1 = abs(sol1);
	
	if(sol1 < sol2) angle_buffer = -sol1;	
	else angle_buffer = sol2;

	image_angle = Approach(image_angle,angle_buffer,5);

//Flipping Gun over
	if(image_angle <270) && (image_angle > 90)
	{
		image_yscale = -1;	
	}
	else image_yscale = 1;
	//Dont make gun image angle go absurdly high or low while moving.
	//if(image_angle != 0)
	//{
	//	image_angle = clamp(image_angle,50,310);
	//	image_angle = clamp(image_angle,140,220);
	//}
	
	//bug that the gun will flip around in dumb ways
}
