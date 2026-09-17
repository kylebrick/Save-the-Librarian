///@desc Update Characters

//The director tells the actors where to walk to, and this controls that movement.

var _names = variable_struct_get_names(cast);
for(var _i = 0; _i<array_length(_names); _i++) {
	var _char = cast[$ _names[_i]];

	if(_char.moving) && (instance_exists(_char.inst)) {
		var _dir  = point_direction(_char.inst.x,_char.inst.y,_char.x_to,_char.y_to);
		var _dist = point_distance (_char.inst.x,_char.inst.y,_char.x_to,_char.y_to);
		var _step = min(_dist,_char.move_spd);

		_char.inst.x += lengthdir_x(_step,_dir);
		_char.inst.y += lengthdir_y(_step,_dir);
		if(_step >= _dist) _char.moving = false;
	}
}

//Move Character
function director_move_char(_char,_dx,_dy,_spd) {
	if (!instance_exists(_char.inst)) {return;} //actor not in room -- fails safe, doesn't crash the cutscene
	_char.x_to		= _char.inst.x+_dx;
	_char.y_to		= _char.inst.y+_dy;
	_char.move_spd	= _spd;
	_char.moving	= true;
}
function director_move_char_end(_char) {return !_char.moving;}