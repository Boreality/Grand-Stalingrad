/// @desc
/// @desc
//Display
	// Display Properties
	global.ideal_width = 0;
	global.ideal_height = 540;//1080;

	aspect_ratio = display_get_width()/display_get_height();
	global.ideal_width = round(global.ideal_height*aspect_ratio);


	// Check for odd number
	if (global.ideal_width and 1) global.ideal_width++;

	surface_resize(application_surface,global.ideal_width,global.ideal_height);
	window_set_size(global.ideal_width,global.ideal_height);
	window_set_fullscreen(true);

	
	global.selected = ds_list_create();
	ds_list_add(global.selected,noone);

room_goto_next(); //Leave for menu