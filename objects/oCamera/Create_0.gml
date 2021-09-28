/*
	Please ensure that viewports are enabled and the 
	active view is set to visible in the room settings
*/

//Retrieve the active view
view_active = view_current; 

/*
When changing the resolution ensure that the correct view_ratio 
is applied to ensure correct resolution scaling.
Default is set to 1080p
*/

//View resolution
var view_width = 1920;
var view_height = 1080;
//Create the camera
view_camera[view_active] = camera_create_view(x - (view_width * 0.5), y - (view_height * 0.5), view_width, view_height);

//For camera follow
//view_camera[view_active] = camera_create_view(x - (view_width * 0.5), y - (view_height * 0.5), view_width, view_height, 0, oPlayer, -1, -1, 1024, 1024);

//Assign the camera to the active view
my_camera = view_camera[view_active];

//Default for 1080p
view_ratio = 1.777777777777778;

//Adjust pan speed here
pan_speed = 30;

//Duration of easing
pan_duration = room_speed;

//Edge panning with the mouse is enabled by default
edge_pan = true;

//Edge border size
move_border = 8;

//Start zoom level
zoom_level = 3;

//Adjust zoom speed here
zoom_speed = 2;

//Speed adjustment for height
zspeed_adj = 0.025;

//Time it takes to stop moving
stop_duration = 10;

//Movement variables
cam_move_l = false;
cam_move_r = false;
cam_move_u = false;
cam_move_d = false;
edge_pan_l = false;
edge_pan_r = false;
edge_pan_u = false;
edge_pan_d = false;
pan_speed_l = 0;
pan_speed_r = 0;
pan_speed_u = 0;
pan_speed_d = 0;
stop_speed_l = 0;
stop_speed_r = 0;
stop_speed_u = 0;
stop_speed_d = 0;
stop_ref_l = 0;
stop_ref_r = 0;
stop_ref_u = 0;
stop_ref_d = 0;
time_l = 0;
time_r = 0;
time_u = 0;
time_d  = 0;
time_ls = stop_duration;
time_rs = stop_duration;
time_us = stop_duration;
time_ds = stop_duration;

dragging = false;
drag_x = mouse_x;
drag_y = mouse_y;

//Set camera initial position and size
target_width  = camera_get_view_width(my_camera);
var start_view_x  = camera_get_view_x(my_camera);
var start_view_y  = camera_get_view_y(my_camera);
cam_x = start_view_x;
cam_y = start_view_y;
cam_w = target_width;
cam_h = target_width/view_ratio;

//Center the camera object
x = start_view_x + (camera_get_view_width(my_camera)  * 0.5);
y = start_view_y + (camera_get_view_height(my_camera) * 0.5);

moving = false;