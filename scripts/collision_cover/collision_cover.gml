//x collisoin
if(place_meeting(x+hsp,y,obj_cover))
{	
	hsp = 0;
}
//y collision
if(place_meeting(x,y+vsp,obj_cover))
{
	vsp = 0;
}