if(!instance_exists(global.selected)) global.selected = noone;
if(key_escape) or (key_middlemouse)
{
	cursor_state = mode.cursor;	
	global.selected = noone;
}