///@desc Init

//Movement
x			= round(x/global.grid_size)*(global.grid_size)+8;
y			= round(y/global.grid_size)*(global.grid_size)+8;
x_to		= x;
y_to		= y;
move_spd	= 0.2;		//How fast do we zip from point-to-point.
move_thresh = 0.1;		//At what range do we come to a stop?
moving		= false;	//Are we moving?
contr_type	= 0;		//Keyboard/Mouse

face_dir	= 1;
image_speed = 0;

if(!instance_exists(obj_interact)) instance_create_layer(x,y,"Player",obj_interact);