///@desc Move w/ Input

if(global.pl_control_ov) {
	var _moving = (x != x_to) || (y != y_to);
	if(!_moving) {
		var _key_up		= keyboard_check(vk_up		) || keyboard_check(ord("W"));
		var _key_down	= keyboard_check(vk_down	) || keyboard_check(ord("S"));
		var _key_left	= keyboard_check(vk_left	) || keyboard_check(ord("A"));
		var _key_right	= keyboard_check(vk_right	) || keyboard_check(ord("D"));
		
		if(_key_up) || (_key_down) || (_key_left) || (_key_right) {
			contr_type	= 0;
			path_ind	= 0;
			
			ds_list_clear(path_x);
			ds_list_clear(path_y);
			
			var _move_x = _key_right-_key_left	;
			var _move_y = _key_down -_key_up	;
			if(_move_x != 0) _move_y = 0; //Only use one axis -> limits to 4-directions.
			
			var _grid_x = (x div global.grid_size) + _move_x;
			var _grid_y = (y div global.grid_size) + _move_y;
			
			if(ds_grid_get(obj_grid.grid,_grid_x,_grid_y) == 0) {
				x_to = _grid_x*global.grid_size;
				y_to = _grid_y*global.grid_size;
			}
		}
		else if(contr_type == 1) && (path_ind < ds_list_size(path_x)) {
			x_to = path_x[| path_ind];
			y_to = path_y[| path_ind];
			path_ind++;
		}
	}
	//Move to Position
	if		(x < x_to) x = min(x+move_spd,x_to);
	else if	(x > x_to) x = max(x-move_spd,x_to);
	if		(y < y_to) x = min(y+move_spd,y_to);
	else if	(y > y_to) x = max(y-move_spd,y_to);
}