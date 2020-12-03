//x collisoin
if(place_meeting(x+hspeed,y,obj_wall))
{	
	hspeed = 0;
}

//y collision
if(place_meeting(x,y+vspeed,obj_wall))
{
	vspeed = 0;
}