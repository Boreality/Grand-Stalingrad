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
firing_delay = 0;

hasgun = false;
grab_object = noone;

my_gun = noone;

bullet_offset = 10;

available = true;

reset_movement_check = true;

//Random Stats

aim = irandom_range(2,9); //Determines accurate shooting
constitution = irandom_range(3.5,7.5); //Determines health and food intake
strength = irandom_range(3.5,7.5); // determines melee, breaking down obstacles
dexterity = irandom_range(3.5,7.5); // determines dodging, speed
will = irandom_range(4.0,8.0); //Determines will to continue fighting


//Converting to workable numbers




