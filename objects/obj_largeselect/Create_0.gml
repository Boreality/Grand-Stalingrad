/// @desc Selecting units within drawing rectangle
//Plan 2: Make a rectangle object that fits the drawing rectangle, 
//and from there use the ds list 

//Data from cursor
x1 = obj_cursor.x;
x2 = obj_cursor.rect_startx;
y1 = obj_cursor.y;
y2 = obj_cursor.rect_starty;

//Setting the object proportions
var w = -(x1-x2);
var h = -(y1-y2);

image_xscale = w/sprite_width;
image_yscale = h/sprite_height;

if(!ds_exists(global.selected,ds_type_list))   global.selected = ds_list_create();

//Getting Collisions
var _list = ds_list_create();
hit_count = instance_place_list(x,y,obj_soldier,_list,false);
repeat(hit_count)
{
	with(ds_list_find_value(_list,0))
	{
		if(ds_list_find_index(global.selected,other) == -1)
		{
			ds_list_add(global.selected,id);
		}
	}
	ds_list_delete(_list,0);
}
ds_list_destroy(_list);
instance_destroy();