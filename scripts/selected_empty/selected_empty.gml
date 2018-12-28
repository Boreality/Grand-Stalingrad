//if(global.selected == noone)
if(ds_exists(global.selected,ds_type_list)) && (ds_list_empty(global.selected))
{
	return true;
}
