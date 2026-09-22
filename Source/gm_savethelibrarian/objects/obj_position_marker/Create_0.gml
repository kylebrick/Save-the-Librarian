///@desc Init


//Build Path to Tile
var _path_temp	= path_add();
var _path_found = mp_grid_path(
	obj_grid.mp_grid,_path_temp,
	obj_player.x,obj_player.y,x,y,false); //false -> 4-directional only.

//Move Player to Path
with(obj_player) {
	ds_list_clear(path_x);
	ds_list_clear(path_y);
	path_ind = 0;
	
	if(_path_found) {
		var _n = path_get_number(_path_temp);
		for(var _i=1;_i<_n;_i++) { //Skip position 0 - current position.
			ds_list_add(path_x,path_get_point_x(_path_temp,_i));
			ds_list_add(path_y,path_get_point_y(_path_temp,_i));
		}
	}
	contr_type	= 1;
}
path_delete(_path_temp);

image_speed = 0.5;