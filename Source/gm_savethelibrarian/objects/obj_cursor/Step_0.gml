///@desc Move to Mouse

x_to	= mouse_x;
x_pos	= lerp(x_pos,x_to,move_spd);
x		= x_pos;

y_to	= mouse_y;
y_pos	= lerp(y_pos,y_to,move_spd);
y		= y_pos;

if(mouse_check_button_pressed(mb_left)) {
	var _grid_x = x div global.grid_size;
	var _grid_y = y div global.grid_size;
	if	(_grid_x >= 0) && (_grid_x < obj_grid.grid_w) && 
		(_grid_y >= 0) && (_grid_y < obj_grid.grid_h) {
			if(ds_grid_get(obj_grid.grid,_grid_x,_grid_y) == 0) {
				instance_create_depth(
					(_grid_x*global.grid_size)+(global.grid_size/2),
					(_grid_y*global.grid_size)+(global.grid_size/2),
					depth,obj_position_marker
				);
			}
		}
}
	