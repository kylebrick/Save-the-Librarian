///@desc Init

//Movement
x			= round(x/global.grid_size)*global.grid_size;
y			= round(y/global.grid_size)*global.grid_size;
x_to		= x;
y_to		= y;
move_spd	= 4;
contr_type	= 0;

//Pathing
path_x		= ds_list_create();
path_y		= ds_list_create();
path_ind	= 0;

image_index = 1;
image_speed = 0;