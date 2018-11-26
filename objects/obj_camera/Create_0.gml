/// @desc
cam = view_camera[0];
follow = obj_cursor;

camera_set_view_size(cam,global.ideal_width,global.ideal_height);

view_h_half = camera_get_view_height(cam) / 2;
view_w_half = camera_get_view_width(cam) / 2;

xTo = x;
yTo = y;


shake_length = 0;	//How long it takes
shake_magnitude = 0;	//How intense it is
shake_remain = 0;	//Timer 
shake_buff = 64;
