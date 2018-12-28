
hsp = 0;
vsp = 0;
grab_speed = 1;
hasgun = false;
my_gun = noone;

enum BEHAVIOR
{
	GRAB_GUN,
	TAKE_COVER,
	IDLE,
	FIRE
	
	
}
nazi_status = BEHAVIOR.GRAB_GUN;