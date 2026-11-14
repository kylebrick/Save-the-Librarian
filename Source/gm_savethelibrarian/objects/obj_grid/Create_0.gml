///@desc Init

//Grid
grid_w			= room_width  div global.grid_size;
grid_h			= room_height div global.grid_size;
grid			= ds_grid_create(grid_w,grid_h);
				  ds_grid_clear (grid,0);
grid_map		= mp_grid_create(
					0,0,grid_w,grid_h,
					global.grid_size,
					global.grid_size
				);
grid_alpha		= 0.1;

//Move
last_valid_x	= -1 ;
last_valid_y	= -1 ;
move_dist		= 128; //How far can the player travel unobstructed?

//Hover
hover_grid_x	= -1;
hover_grid_y	= -1;