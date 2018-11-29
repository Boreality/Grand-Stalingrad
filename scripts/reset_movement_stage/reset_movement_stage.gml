if(reset_movement_check)
{
    halt_movement();
    direction = 0;
			
    order_position_x = -1;
    order_position_y = -1;
	firing_location_x = -1;
	firing_location_y = -1;
			
    available = true;   
    reset_movement_check = false;
}
		
		
