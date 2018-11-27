/// @desc
draw_self();
draw_set_font(fnt_debug);
draw_text(x,y + 50, "Highlighted: " + string(highlighted));
draw_text(x,y + 70, "state " + string(soldier_state));
draw_text(x,y + 90, "available " + string(available));
draw_text(x,y+110,"firing_location_x: " + string(firing_location_x));
draw_text(x,y+130,"firing_location_y: " + string(firing_location_y));


