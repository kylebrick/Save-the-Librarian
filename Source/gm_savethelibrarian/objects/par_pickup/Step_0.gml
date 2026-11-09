///@desc Size & Position

switch(global.pickup) {
	case noone: {	//None
		image_index	= 0;
		x_scale_to	= scale_min;
		y_scale_to	= scale_min;
		break;
	}
	case id: {		//Self
		image_index = 1;
		x_to		= global.cursor.x_to;
		y_to		= global.cursor.y_to;
		x_scale_to	= scale_max;
		y_scale_to	= scale_max;
		break;
	}
	default: {		//Other
		image_index	= 0;
		x_scale_to	= scale_min;
		y_scale_to	= scale_min;
		break;
	}
}

//Functions
function play_sfx() {
	var _pitch		= irandom_range(1,1.2);
	var _arr_len	= array_length (pickup_snds)-1;
	audio_play_sound(pickup_snds[irandom_range(0,_arr_len)],0,false,1,0,_pitch);
}
function snap_attempt() {
	var _near_node = noone;
	var _near_dist = snap_radius;
	with(obj_pickup_node) {
		if(occupant == noone) {
			var _dist = point_distance(other.x,other.y,x,y);
			if(_dist < _near_dist) {
				_near_dist = _dist;
				_near_node = id;
			}
		}
	}
	if(_near_node != noone) {
		x_to		= _near_node.x;
		y_to		= _near_node.y;
		snap_node	= _near_node;
		_near_node.occupant = id;
	}
}