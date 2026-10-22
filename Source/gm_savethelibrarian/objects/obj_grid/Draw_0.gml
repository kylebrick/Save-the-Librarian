///@desc Grid & Highlight

//Draw faint grid lines
#region
for(var _i=0;_i<grid_w;_i++) {
	for(var _n=0;_n<grid_h;_n++) {
		draw_sprite(spr_grid_tile,0,16*_i,16*_n);
	}
}
#endregion

//Draw hovering tile select & determine if path is valid.
if(instance_exists(obj_player)) {
	var _px			= obj_player.x;
	var _py			= obj_player.y;
	var _cx			= (hover_grid_x*global.grid_size)+(global.grid_size/2);
	var _cy			= (hover_grid_y*global.grid_size)+(global.grid_size/2);
	var _dir		= point_direction(_px,_py,_cx,_cy);
	var _dist		= point_distance (_px,_py,_cx,_cy);
	
	//Check for collision/gaps and calculate distance
	if		(instance_position(_cx,_cy,obj_col) != noone) ||
			(instance_position(_cx,_cy,obj_gap) != noone)		 valid_path = false;
	else if	(collision_line(_px,_py,_cx,_cy,obj_col,false,true)) valid_path = false;
	else if	(collision_line(_px,_py,_cx,_cy,obj_gap,false,true)) {
		calc_valid_path(
			_px,_py,_cx,_cy,
			_dir,_dist,move_dist_gap
		);
	}
	else														 {
		calc_valid_path(
			_px,_py,_cx,_cy,
			_dir,_dist,move_dist_floor
		);
	}
}

//Functions
function get_move_target() {
	return [move_x,move_y];
}
function calc_valid_path(_px,_py,_cx,_cy,_dir,_dist,_move_dist) {
	for(var _i=global.grid_size;_i<=_move_dist;_i+=global.grid_size) {
		var _tx = _px + lengthdir_x(_i,_dir);
		var _ty = _py + lengthdir_y(_i,_dir);
		_tx = round(_tx/global.grid_size)*global.grid_size+(global.grid_size/2);
		_ty = round(_ty/global.grid_size)*global.grid_size+(global.grid_size/2);
		break;
	}
	if	(hover_grid_x >= 0) && (hover_grid_x < grid_w) &&
		(hover_grid_y >= 0) && (hover_grid_y < grid_h) {
			if	(ds_grid_get(grid,hover_grid_x,hover_grid_y) == 0)	&& 
				(instance_position(_cx,_cy,obj_col) == noone)		&&
				(instance_position(_cx,_cy,obj_gap) == noone) {
					
					if(_dist <= _move_dist) {draw_set_color(c_lime); valid_path = true ;}
					if(_dist >  _move_dist) {draw_set_color(c_red ); valid_path = false;}
					
					draw_set_alpha(0.44);
					draw_rectangle(
						hover_grid_x*global.grid_size,hover_grid_y*global.grid_size,
						hover_grid_x*global.grid_size+(global.grid_size),
						hover_grid_y*global.grid_size+(global.grid_size),
						false
					);
					draw_set_color(c_white);
					draw_set_alpha(1);
				}
		}	
}