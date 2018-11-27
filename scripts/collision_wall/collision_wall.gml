//x collisoin
if(place_meeting(x+hsp,y,obj_wall))
{	
	hsp = 0;
}

//y collision
if(place_meeting(x,y+vsp,obj_wall))
{
	vsp = 0;
}