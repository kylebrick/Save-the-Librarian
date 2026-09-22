///@desc Grid & Highlight

for(var _i=0;_i<10;_i++) {
	for(var _n=0;_n<10;_n++) {
		draw_sprite(spr_grid_tile,0,16*_i,16*_n);
	}
}

if	(hover_grid_x >= 0) && (hover_grid_x < grid_w) &&
	(hover_grid_y >= 0) && (hover_grid_y < grid_h) {
	if(ds_grid_get(grid,hover_grid_x,hover_grid_y) == 0) {
		draw_set_color(c_lime);
		draw_set_alpha(0.44);
		draw_rectangle(
			hover_grid_x*global.grid_size,hover_grid_y*global.grid_size,
			hover_grid_x*global.grid_size+(global.grid_size-1),
			hover_grid_y*global.grid_size+(global.grid_size-1),
			false
		);
		draw_set_alpha(1);
	}
}