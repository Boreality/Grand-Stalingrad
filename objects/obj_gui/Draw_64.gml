/// @desc debug and interface
display_set_gui_size(global.ideal_width,global.ideal_height);

draw_set_font(fnt_debug);
draw_text(20,20,string(global.selected));
draw_text(20,40,string(obj_soldier.order_position_x));
draw_text(20,60,"Cursor mode: " + string(obj_cursor.cursor_state))

draw_sprite(spr_gui_fire,image_index,fire_buttonx,fire_buttony);
draw_sprite(spr_gui_duck,image_index,duck_buttonx,duck_buttony);



