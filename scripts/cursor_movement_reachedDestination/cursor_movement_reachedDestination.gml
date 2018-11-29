	if(point_in_circle(x,y,order_position_x,order_position_y,30))
			{
				halt_movement();
				direction = 0;
				order_position_x = -1;
				order_position_y = -1;
				available = true;
			}