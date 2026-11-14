///@desc Handle Input

//State-Machine
switch(room) {
	case rm_000_startup:		{type = 0;
		_move_cursor_to_mouse();
		break;
	}
	case rm_001_main_menu:		{type = 0;
		_move_cursor_to_mouse(); 
		break;
	}
	case rm_002_opening:		{type = 0;
		_move_cursor_to_mouse(); 
		break;
	}
	case rm_003_char_select:	{type = 0;
		_move_cursor_to_mouse(); 
		break;
	}
	case rm_004_level:			{type = 0;
		_move_cursor_to_mouse();
		_grid_cursor_input();
		break;
	}
	case rm_005_puzzle:			{type = 1;
		_move_cursor_to_mouse();
		break;
	}
}

//Functions
#region

function _move_cursor_to_mouse() {
	x_to	= mouse_x					;
	y_to	= mouse_y					;
	x_pos	= lerp(x_pos,x_to,move_spd)	;
	y_pos	= lerp(y_pos,y_to,move_spd)	;
	x		= x_pos						;
	y		= y_pos						;
}
function _grid_cursor_input() {

	if(scr_obj_ref_check(obj_player_ov,obj_grid)) {	
		if(mouse_check_button_pressed(mb_left)) {
			if(place_meeting(x,y,par_tile))	{
				
				//Direction
				with(obj_player_ov) {
					var _dir = point_direction(x,y,other.x,other.y);
					scr_change_player_facing(_dir);
				}				
				var _x = obj_grid.last_valid_x;
				var _y = obj_grid.last_valid_y;
				if(_x != -1) && (_y != -1) {
					instance_create_depth(_x,_y,obj_player_ov.depth+1,obj_pos_marker);	
				}
			}
		}
	}
}

#endregion