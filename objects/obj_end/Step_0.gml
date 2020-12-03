if(place_meeting(x,y,obj_soldier))
{
	
	won=true;
	with(instance_nearest(x,y,obj_soldier)) instance_destroy();
	
}

if(won){
	if(layer_exists("WIN")) layer_set_visible("WIN",true);
	win_timer--;
	if(win_timer<=0){
		obj_ost.room_change = true;
		room_goto_next();	
	}
	
}