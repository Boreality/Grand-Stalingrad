/// @description Hitting objects

if(place_meeting(x,y,obj_wall))
{
	instance_destroy();	
}
if(!place_meeting(x,y,owner_soldier))
{
	with(collision_point(x,y,obj_soldier,false,true))
	{
		instance_create_layer(x,y,"Soldiers",obj_soldier_dead);
		instance_destroy();	
		with(other) instance_destroy();	
	}
}



