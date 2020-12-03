
hsp = 0;
vsp = 0;
grab_speed = 2;
hasgun = false;
my_gun = noone;

incover = false;

fire_delay_max = room_speed * 1;
fire_delay = 0;

focus_timer_max = 5 * room_speed;
focus_timer = 0;

nearest_soviet_ = 0;
distance_soviet_ = 0;
activation_radius_ = 250;

firing_locationx = 0;
firing_locationy = 0;

grab_radius = 230;

enum BEHAVIOR
{
	IDLE,
	FIRE,
	GRAB_GUN
}
nazi_status = BEHAVIOR.IDLE;
