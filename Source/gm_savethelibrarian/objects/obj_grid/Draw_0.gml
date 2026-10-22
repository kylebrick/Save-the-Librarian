///@desc Grid & Highlight

//Draw faint grid lines/
#region
for(var _i=0;_i<grid_w;_i++) {
	for(var _n=0;_n<grid_h;_n++) {
		draw_sprite(spr_grid_tile,0,16*_i,16*_n);
	}
}
#endregion

//Draw hovering tile select & determine if path is valid.
if(instance_exists(obj_player)) {
	var _px		= obj_player.x; var _px_ideal = _px;
	var _py		= obj_player.y; var _py_ideal = _py;
	var _cx		= (hover_grid_x*global.grid_size)+(global.grid_size/2);
	var _cy		= (hover_grid_y*global.grid_size)+(global.grid_size/2);
	var _dist	= point_distance (_px,_py,_cx,_cy);
	var _dir	= point_direction(_px,_py,_cx,_cy);
	
	//Check distance
	if(_dist <= move_dist) {
		valid_path	= true;
		move_x		= _cx;
		move_y		= _cy;
		draw_set_color(c_lime);
	}
	else					{
		valid_path	= false;
		//Calculate fallback here.
		draw_set_color(c_red);
	}	

	for(var _i=global.grid_size;_i<=move_dist;_i+=global.grid_size) {
		var _tx = _px + lengthdir_x(_i,_dir);
		var _ty = _py + lengthdir_y(_i,_dir);
		_tx = round(_tx/global.grid_size)*global.grid_size+(global.grid_size/2);
		_ty = round(_ty/global.grid_size)*global.grid_size+(global.grid_size/2);
		
		if(!position_meeting(_tx,_ty,obj_col)) && (!collision_line(_px,_py,_tx,_ty,obj_col,false, true)) {
			_px_ideal = _tx;
			_py_ideal = _ty;
		}
		else break;
	}
	if(_px_ideal != _px) || (_py_ideal != _py) {
		draw_set_alpha(0.44);
		draw_set_color(c_teal);
		draw_rectangle(
			_px_ideal*global.grid_size,_py_ideal*global.grid_size,
			_px_ideal*global.grid_size+(global.grid_size),
			_py_ideal*global.grid_size+(global.grid_size),
			false
		);
		draw_set_color(c_white);
		draw_set_alpha(1);
	}

	if	(hover_grid_x >= 0) && (hover_grid_x < grid_w) &&
		(hover_grid_y >= 0) && (hover_grid_y < grid_h) {
			if	(ds_grid_get(grid,hover_grid_x,hover_grid_y) == 0)	&& 
				(instance_position(_cx,_cy,obj_col) == noone)		&&
				(!collision_line(_px,_py,_cx,_cy,obj_col,false,true)) {
					
					if(_dist <= move_dist) {draw_set_color(c_lime); valid_path = true ;}
					if(_dist >  move_dist) {draw_set_color(c_red ); valid_path = false;}
					
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

//Functions
function get_move_target() {return [move_x,move_y];}