///@desc Move w/ Input

if(global.pl_control_ov) {
	
	switch(contr_type) {
		case 0: {
			if(moving) {
				x = lerp(x,x_to,move_spd);
				y = lerp(y,y_to,move_spd);
			}
			if(point_distance(x,y,x_to,y_to)<1) {
				x		= x_to;
				y		= y_to;
				moving	= false;
				if(move_init()) moving = true;
			}
			break;
		}
		case 1: {
			if(moving) {
				x = lerp(x,x_to,move_spd/2);
				y = lerp(y,y_to,move_spd/2);
			}
			if(point_distance(x,y,x_to,y_to)<1) {
				x_to		= x;
				y_to		= y;
				moving		= false;
				contr_type	= 0;
			}
			break;
		}
		default: break;
	}
}
	
function move_init() {
	var _key_up		= keyboard_check(vk_up		) || keyboard_check(ord("W"));
	var _key_down	= keyboard_check(vk_down	) || keyboard_check(ord("S"));
	var _key_left	= keyboard_check(vk_left	) || keyboard_check(ord("A"));
	var _key_right	= keyboard_check(vk_right	) || keyboard_check(ord("D"));	
	var _gs			= global.grid_size;
	
	if(_key_up)		{face_dir = 0;
		if(!position_meeting(x,y-_gs,obj_col)) {
			y_to = y-_gs; 
			return true;
		}
	}
	if(_key_down)	{face_dir = 1;
		if(!position_meeting(x,y+_gs,obj_col)) {
			y_to = y+_gs; 
			return true;
		}
	}
	if(_key_left)	{face_dir = 2;
		if(!position_meeting(x-_gs,y,obj_col)) {
			x_to = x-_gs;
			return true;
		}
	}
	if(_key_right)	{face_dir = 3; 
		if(!position_meeting(x+_gs,y,obj_col)) {
			x_to = x+_gs;
			return true;
		}
	}
	
	return false;
}