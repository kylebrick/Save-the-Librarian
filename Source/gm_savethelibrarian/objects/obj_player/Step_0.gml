///@desc Move w/ Input

if(global.pl_control_ov) {
	
	switch(contr_type) {
		case 0: {
			var _key_up		= keyboard_check_pressed(vk_up		) || keyboard_check_pressed(ord("W"));
			var _key_down	= keyboard_check_pressed(vk_down	) || keyboard_check_pressed(ord("S"));
			var _key_left	= keyboard_check_pressed(vk_left	) || keyboard_check_pressed(ord("A"));
			var _key_right	= keyboard_check_pressed(vk_right	) || keyboard_check_pressed(ord("D"));	
	
			if(_key_up)		&& (!position_meeting(x,y-global.grid_size,obj_col)) y -= global.grid_size;
			if(_key_down)	&& (!position_meeting(x,y+global.grid_size,obj_col)) y += global.grid_size;
			if(_key_left)	&& (!position_meeting(x-global.grid_size,y,obj_col)) x -= global.grid_size;
			if(_key_right)	&& (!position_meeting(x+global.grid_size,y,obj_col)) x += global.grid_size;
			
			break;
		}
		case 1: {
			x = x_to;
			y = y_to;
			if(point_distance(x,y,x_to,y_to)<1) {
				x_to		= x;
				y_to		= y;
				contr_type	= 0;
			}
			break;
		}
		default: break;
	}
}