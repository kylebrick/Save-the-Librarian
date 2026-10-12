///@desc Grid & Highlight

//Draw faint grid lines
#region
/*
for(var _i=0;_i<grid_w;_i++) {
	for(var _n=0;_n<grid_h;_n++) {
		//draw_sprite(spr_grid_tile,0,16*_i,16*_n);
	}
}
*/
#endregion

//Draw hovering tile select
if(instance_exists(obj_player)) {
	var _px = obj_player.x;
	var _py = obj_player.y;
	var _cx = (hover_grid_x*global.grid_size)+(global.grid_size/2);
	var _cy = (hover_grid_y*global.grid_size)+(global.grid_size/2);

	draw_line_width_colour(_px,_py,_cx,_cy,4,c_green,c_green);

	if	(hover_grid_x >= 0) && (hover_grid_x < grid_w) &&
		(hover_grid_y >= 0) && (hover_grid_y < grid_h) {
			if	(ds_grid_get(grid,hover_grid_x,hover_grid_y) == 0)	&& 
				(instance_position(_cx,_cy,obj_col) == noone)		&&
				(!collision_line(_px,_py,_cx,_cy,obj_col,false,true)) {
					draw_set_color(c_lime);
					draw_set_alpha(0.44);
					draw_rectangle(
						hover_grid_x*global.grid_size,hover_grid_y*global.grid_size,
						hover_grid_x*global.grid_size+(global.grid_size),
						hover_grid_y*global.grid_size+(global.grid_size),
						false
					);
					draw_set_alpha(1);
				}
		}
}