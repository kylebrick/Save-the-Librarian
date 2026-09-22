///@desc Spawn Macro Suite Objects
function scr_macro_suite() {

	//Vars
	#region
	var _macro_arr = [
		[obj_macro,			true],
		[obj_director,		true],
		[obj_maestro,		true],
		[obj_camera,		true],
		[obj_resolution,	true],
		[obj_debug,			true]
	]
	var _macro_arr_len		= array_length(_macro_arr);
	var _macro_spr_width	= sprite_get_width(sprite_index);
	var _macro_pos_offset	= 1;
	var _macro_lay_id		= layer_get_id("Macro");
	var _grid_lay_id		= layer_get_id("Grid");
	#endregion
	
	//Spawn Objects
	for(var _i=0;_i<_macro_arr_len;_i++) {
		
		//Vars
		#region
		var _obj	= _macro_arr[_i][0];
		var _spawn	= _macro_arr[_i][1];
		var _width	= _macro_spr_width;
		var _offset = _macro_pos_offset;
		var _lay_id = _macro_lay_id;
		#endregion
		
		if(_spawn) {						//Should we spawn this object?
			if(!instance_exists(_obj)) {	//Does it already exist?
				instance_create_layer(0+((_width+_offset)*_i),y,_lay_id,_obj);
				show_debug_message(_i);
			}
		}
	}

	//Spawn Misc. Objects
	if(!instance_exists(obj_grid)) && (layer_exists("Grid")) instance_create_layer(room_width-12,y,_grid_lay_id,obj_grid	);
	//if(!instance_exists(obj_cutscene))	instance_create_layer(room_width-24,y,_macro_lay_id,obj_cutscene);
	//if(!instance_exists(obj_textbox))		instance_create_layer(room_width-36,y,_macro_lay_id,obj_textbox );
}