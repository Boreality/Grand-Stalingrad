/// @desc
switch(soldier_state)
{
	case status.movement:
		sprite_index = spr_soldier;
		reset_movement_check = true; 
		
		if(order_position_full()) // if has desitnation
		{
			direction = point_direction(x,y,order_position_x,order_position_y);
			hsp = lengthdir_x(3,direction);
			vsp = lengthdir_y(3,direction);
			//speed = 4;
			available = false;
			
			if(point_in_circle(x,y,order_position_x,order_position_y,30)) // reached destination
			{
				halt_movement();
				direction = 0;
				order_position_x = -1;
				order_position_y = -1;
				available = true;
			}
		}
	break;
	case status.fire:
	   
	   //If selsected and firing, stop?!
	   //Canceling traveling stage
		reset_movement_stage();
		//SHooty code
		if(hasgun)
		{
			sprite_index = spr_soldier_fire;
			if(firing_location_x != -1) and (firing_location_y != -1)
			{
				firing_delay--;
				if(firing_delay <= 0)
				{
					direction = point_direction(x,y,firing_location_x,firing_location_y)+ random_range((-other.bullet_offset + other.aim),(other.bullet_offset-other.aim));
					fire_bullet();
					
					firing_delay = firing_delay_max;
				}
			}
		}
	break;
	case status.duck:
		sprite_index = spr_soldier_duck;
		
		
	break;

}
//if(selected_empty()) highlighted = false;
//if(ds_list_find_index(global.selected,id) != -1) highlighted = true;

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
collision_cover();

x += hsp;
y += vsp;

////hsp
//if (place_meeting(x+hsp,y,obj_soldier)){
//    var sx = sign(hsp);
//    while(!place_meeting(x+sx,y,obj_soldier)){
//        x += sx;
//    }
//    hsp = 0;
//} else{
//    x += hsp;
//}  
////for vsp
//if (place_meeting(x,y+vsp,obj_soldier)){
//    var sy = sign(vsp);
//    while(!place_meeting(x,y+sy,obj_soldier)){
//        y += sy;
//    }
//    vsp = 0;
//} else{
//    y += vsp;
//}  

//Enemy Soldier AI
/*
    Planning
    Want to be able to trigger custom behavior based on duds + other factors (low ammo means leaving)
    Need mutliple types of enemies, eatch with own behavior tree.
    Ex. Charge solider. Takes one hit, staggers and tries to run back. firing as running. Usually becomes one after a while of low morale
        Gatling gun. Stays in one place and fires unrelenting barrage of machine gun fire. Takes as long to fire as it does to reload. shoots at proscribed place and any enemy within range
        tank: (boss?) moves around the city. Takes lots of hits and soldiers come pouring out as it catches fire or stops working. Has a normal machine gun, but also large bullet that negates cover
        sniper. Stays in spot, fires at one destination (line between them and target, shooting whoever.)
        Default intantry. will generally be hiding behind cover, occasionally shooting but for really low amount of times.
        
        

some 

*/


