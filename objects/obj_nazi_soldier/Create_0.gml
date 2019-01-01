
hsp = 0;
vsp = 0;
grab_speed = 1;
hasgun = false;
my_gun = noone;

incover = false;

fire_delay_max = room_speed * 1;
fire_delay = 0;

update_timer_max = 10 * room_speed;
update_timer = 0;

nearest_soviet_ = 0;
distance_soviet_ = 0;
activation_radius_ = 400;

firing_locationx = 0;
firing_locationy = 0;


enum BEHAVIOR
{
	GRAB_GUN,
	TAKE_COVER,
	IDLE,
	FIRE
	
	
}
nazi_status = BEHAVIOR.FIRE;