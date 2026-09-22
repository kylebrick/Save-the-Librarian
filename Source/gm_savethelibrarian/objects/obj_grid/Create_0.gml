///@desc Init

//Grid
grid_w		= room_width  div global.grid_size;
grid_h		= room_height div global.grid_size;
grid		= ds_grid_create(grid_w,grid_h);
			  ds_grid_clear (grid,0);

//Map & Collision
with(obj_col) {
	var _gx = x div global.grid_size;
	var _gy = y div global.grid_size;
	ds_grid_set(other.grid,_gx,_gy,1);
}
mp_grid =	mp_grid_create(0,0,grid_w,grid_h,global.grid_size,global.grid_size);
			//mp_grid_add_instances(mp_grid,obj_col,false);

//Hover
hover_grid_x = -1;
hover_grid_y = -1;