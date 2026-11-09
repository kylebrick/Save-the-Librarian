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

//Function
#region

function _obj_ref_check(_obj_list) {
	for(var _i=0;_i<argument_count;_i++) {
		if(!instance_exists(argument[_i])) return false;
	}
	return true;
}
function _move_cursor_to_mouse() {
	x_to	= mouse_x					;
	y_to	= mouse_y					;
	x_pos	= lerp(x_pos,x_to,move_spd)	;
	y_pos	= lerp(y_pos,y_to,move_spd)	;
	x		= x_pos						;
	y		= y_pos						;
}
function _grid_cursor_input() {
	if(_obj_ref_check(obj_tile_col,obj_tile_interact,obj_player_ov,obj_grid)) {	
		if(mouse_check_button_pressed(mb_left)) {
			/*
				1 - Is tile a normal space? i.e. are we not touching anything -> move to space.
				2 - Ok, we're touching a tile. What's the array of tiles in-between player and cursor (within distance).
				3 - Determine furthest valid tile that can be moved to.
				4 - Move to first valid tile, face direction, and...
				5 - If interactable tile -> spawn interactable (textbox).
			*/
			
			if		( place_meeting(x,y,obj_tile_col		))	{
				//Change player's direction, but don't move into space.
				with(obj_player_ov) {
					var _dir = point_direction(x,y,other.x,other.y);
					scr_change_player_facing(_dir)
				}
				scr_debug_msg("collision");
			}
			else if	( place_meeting(x,y,obj_tile_interact))	{
				//Change player's direction, but don't move into space.
				with(obj_player_ov) {
					var _dir = point_direction(x,y,other.x,other.y);
					scr_change_player_facing(_dir)
				}
				scr_debug_msg("interact");
			}
			else {
				//Change player's direction...
				with(obj_player_ov) {
					var _dir = point_direction(x,y,other.x,other.y);
					scr_change_player_facing(_dir)
				}
				scr_debug_msg("else");
					var _pl_x	= obj_player_ov.x;
					var _pl_y	= obj_player_ov.y;
					var _grid_x = x div global.grid_size;
					var _grid_y = y div global.grid_size;
					var _cell_x = (_grid_x*global.grid_size)+(global.grid_size/2);
					var _cell_y = (_grid_y*global.grid_size)+(global.grid_size/2);
			
					//Valid path? -> Place position marker.
					if(obj_grid.valid_path) {
						instance_create_depth(_cell_x,_cell_y,obj_player_ov.depth+1,obj_pos_marker);
					}
					else					{ //Move to the nearest valid space.
						//Check for first available space
						var _gs		= global.grid_size;
						var _dir	= point_direction(_pl_x,_pl_y,_cell_x,_cell_y);
						scr_debug_msg(_dir);
						
						if		((_dir >= 0  )	&& (_dir <= 45 )) &&
								((_dir <= 360) && (_dir < 315 )) { //Right
							if	(!place_meeting(_cell_x+(_gs*2),_cell_y,obj_tile_col)) &&
								(!place_meeting(_cell_x+(_gs*2),_cell_y,obj_tile_interact)) {
								instance_create_depth(_cell_x+(_gs*2),_cell_y,
								obj_player_ov.depth+1,obj_pos_marker);
								scr_debug_msg("Right");
							}
						}
						else if	(_dir > 45)		&& (_dir <= 135) { //Up
							if	(!place_meeting(_cell_x,_cell_y-(_gs*2),obj_tile_col			)) &&
								(!place_meeting(_cell_x,_cell_y-(_gs*2),obj_tile_interact)) {
								instance_create_depth(_cell_x,_cell_y-(_gs*2),
								obj_player_ov.depth+1,obj_pos_marker);
								scr_debug_msg("Up");
							}
						}
						else if	(_dir > 135)	&& (_dir <= 225) { //Left
							if	(!place_meeting(_cell_x,_cell_y-(_gs*2),obj_tile_col			)) &&
								(!place_meeting(_cell_x,_cell_y-(_gs*2),obj_tile_interact)) {
								instance_create_depth(_cell_x,_cell_y-(_gs*2),
								obj_player_ov.depth+1,obj_pos_marker);
								scr_debug_msg("Left");
							}							
						}
						else if	(_dir > 225)	&& (_dir <= 315) { //Down
							if	(!place_meeting(_cell_x,_cell_y-(_gs*2),obj_tile_col			)) &&
								(!place_meeting(_cell_x,_cell_y-(_gs*2),obj_tile_interact)) {
								instance_create_depth(_cell_x,_cell_y-(_gs*2),
								obj_player_ov.depth+1,obj_pos_marker);
								scr_debug_msg("Down");
							}
						}
					}
			}
		}
	}
}

#endregion

//Functions

//For Testing Later - Interact
#region
/*
show_debug_message("Weeeee");
			
//Find ideal valid tile next to interactable
var _npc = instance_place(x,y,obj_interact);
if(_npc != noone) {
	var _gs		= global.grid_size;
	var _tiles = [
		[_npc.x,		_npc.y-_gs,	1],
		[_npc.x,		_npc.y+_gs,	0],
		[_npc.x-_gs,	_npc.y,		3],
		[_npc.x+_gs,	_npc.y,		2],
	]
				
	var _x_ideal	= x;
	var _y_ideal	= y;
	var _face_ideal = obj_player.face_dir;
	var _dist_ideal = 444;
				
	for(var _i=0;_i<array_length(_tiles);_i++) {
		var _tx		= _tiles[_i][0];
		var _ty		= _tiles[_i][1];
		var _face	= _tiles[_i][2];
					
		if(!position_meeting(_tx,_ty,obj_col)) {
			var _dist = point_distance(x,y,_tx,_ty);
			if(_dist < _dist_ideal) {
				_dist_ideal = _dist;
				_x_ideal	= _tx;
				_y_ideal	= _ty;
				_face_ideal	= _face;
			}
		}
	}
	x_to				= _x_ideal;
	y_to				= _y_ideal;
	obj_player.face_dir = _face_ideal;
	contr_type			= 1;
}


			
//Create textbox
//scr_create_textbox("test","this is a test. weeee. i can type anything here, huh?");
*/
#endregion