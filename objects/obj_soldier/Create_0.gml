/// @desc
order_position_x = -1;
order_position_y = -1;

firing_location_x = -1;
firing_location_y = -1;

hsp = 0;
vsp = 0;

highlighted = false;

soldier_state = status.movement;
enum status {
	movement,
	fire,
	duck,
	grab

}

firing_delay_max = 30;
firing_delay = firing_delay_max;

hasgun = false;
grab_object = noone;

my_gun = noone;

available = true;