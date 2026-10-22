///@desc Move to Mouse

//Movement
#region

x_to	= mouse_x;
x_pos	= lerp(x_pos,x_to,move_spd);
x		= x_pos;

y_to	= mouse_y;
y_pos	= lerp(y_pos,y_to,move_spd);
y		= y_pos;

#endregion

//Handle Input

if(instance_exists(obj_grid)) {
	if(mouse_check_button_pressed(mb_left)) {
		if		( place_meeting(x,y,obj_col		))	{
			
			//Change player's direction, but don't move into space.
			with(obj_player) {
				var _dir = point_direction(x,y,other.x,other.y);
				scr_change_player_facing(_dir)
			}
		}
		else if	(!place_meeting(x,y,obj_col		))	{
				var _px		= obj_player.x;
				var _py		= obj_player.y;
				var _grid_x = x div global.grid_size;
				var _grid_y = y div global.grid_size;
			
				//Valid path? -> Place position marker.
				if(obj_grid.valid_path) {
					instance_create_depth(
						(_grid_x*global.grid_size)+(global.grid_size/2),
						(_grid_y*global.grid_size)+(global.grid_size/2),
						obj_player.depth+1,obj_position_marker
					);
				}
				else					{ //Move to the nearest valid space.
					
				}
		}
		else if	( place_meeting(x,y,obj_interact))	{
			
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
			*/
			//#endregion
			
			//Create textbox
			//scr_create_textbox("test","this is a test. weeee. i can type anything here, huh?");
		}
	}
}