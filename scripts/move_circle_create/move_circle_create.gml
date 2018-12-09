 //Creating dota 2 movement circle
if(instance_exists(obj_move_target))
{
	with(obj_move_target) instance_destroy();	
					
}
instance_create_layer(x,y,"move_circle",obj_move_target);
				