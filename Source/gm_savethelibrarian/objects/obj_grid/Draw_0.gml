///@desc Grid & Highlight

//Draw Faint Grid Lines
_draw_grid_lines(grid_w,grid_h,grid_alpha);

//Capture Path -> Determine if Valid
if(scr_obj_ref_check(
	obj_player_ov,par_tile,
	obj_tile_move,obj_tile_col,obj_tile_gap,
	obj_tile_interact,obj_tile_trigger)) {
	
	//Vars
	#region
	
	var _px		= obj_player_ov.x;
	var _py		= obj_player_ov.y;
	var _cx		= (hover_grid_x*global.grid_size)+(global.grid_size/2);
	var _cy		= (hover_grid_y*global.grid_size)+(global.grid_size/2);
	var _dir	= point_direction(_px,_py,_cx,_cy);
	var _dist	= point_distance (_px,_py,_cx,_cy);
	
	#endregion
	
	//Debug Draw
	var _off = 8;
	var _wid = 1;
	draw_set_alpha(0.25);
	draw_rectangle_colour	(_cx-_off,_cy-_off,_cx+_off,_cy+_off,c_red,c_red,c_red,c_red,false);
	draw_line_width_colour	(_px,_py,_cx,_cy,_wid,c_purple,c_purple);
	draw_set_alpha(1);
	
	//Capture Collision List
	var _valid_tile;
	var _list = ds_list_create();
	var _numb = collision_line_list(_px,_py,_cx,_cy,par_tile,true,true,_list,true);
	if(_numb > 0) {
		for(var _i=0;_i<_numb;_i++) {
			
			draw_set_color(c_white);
			draw_set_alpha(1-(_i*0.1));
			var _tile_id	  = -1;					  _tile_id		= (_list[| _i  ]).object_index;
			var _prev_tile_id = -1; if(_i >= 1		) _prev_tile_id = (_list[| _i-1]).object_index;
			var _next_tile_id = -1; if(_i < _numb-1	) _next_tile_id	= (_list[| _i+1]).object_index;

			last_valid_x = -1;
			last_valid_y = -1;
			if (_tile_id == obj_tile_col) || (_tile_id == obj_tile_gap) 
			|| (_tile_id == obj_tile_interact) {
				if(_prev_tile_id != -1) {
					if(_prev_tile_id == obj_tile_move) {
						last_valid_x = _prev_tile_id.x;
						last_valid_y = _prev_tile_id.y;
					}
				}
			}
			
			//DEBUG
			switch((_list[| _i]).object_index) {
				case obj_tile_move:		{draw_set_color(c_lime	 ); break;}
				case obj_tile_col:		{draw_set_color(c_red	 ); break;}
				case obj_tile_gap:		{draw_set_color(c_fuchsia); break;}
				case obj_tile_interact:	{draw_set_color(c_aqua	 ); break;}
				case obj_tile_trigger:	{draw_set_color(c_yellow ); break;}
				default:				{							break;}	
			}
			var _offset	= global.grid_size/2;
			var _x		= _list[| _i].x;
			var _y		= _list[| _i].y;
			draw_rectangle(_x-_offset,_y-_offset,_x+_offset,_y+_offset,false);
			draw_set_color(c_white); draw_set_alpha(1);		
		};
	}
}

//Functions
function _draw_grid_lines(_grid_w,_grid_h,_alpha) {
	for(var _i=0;_i<_grid_w;_i++) {
		for(var _n=0;_n<_grid_h;_n++) {
			draw_set_alpha(_alpha);
			draw_sprite(
				spr_tile_grid_transp,0,
				(16*_i)-(global.grid_size/2),
				(16*_n)-(global.grid_size/2)
			);
			draw_set_alpha(1);
		}
	}
}