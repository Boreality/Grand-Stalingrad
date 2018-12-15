//if(!instance_exists(global.selected)) global.selected = noone;
if(!instance_exists(obj_soldier)) ds_list_clear(global.selected);
if(key_escape) or (key_middlemouse)
{
	cursor_state = mode.cursor;	
	//global.selected = noone;
	ds_list_clear(global.selected);
}