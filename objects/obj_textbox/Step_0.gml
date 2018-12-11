/// @desc Progress text!

letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fnt_debug);
if(h == 0) h = string_height(text);
w = string_width(text_current); 

//destroy when done
if(letters > length) && (obj_cursor.key_escape)
{
	instance_destroy();
	
}