///@desc Move w/ Input

var _key_up		= keyboard_check(vk_up		) || keyboard_check(ord("W"));
var _key_down	= keyboard_check(vk_down	) || keyboard_check(ord("S"));
var _key_left	= keyboard_check(vk_left	) || keyboard_check(ord("A"));
var _key_right	= keyboard_check(vk_right	) || keyboard_check(ord("D"));
var _move_x = _key_right-_key_left	;
var _move_y = _key_down -_key_up	;
if(_move_x != 0) || (_move_y != 0) contr_type = 0;

switch(contr_type) {
	case 0: { //Keyboard
		
		x_spd = move_spd*_move_x;
		y_spd = move_spd*_move_y;

		x += x_spd;
		y += y_spd;
		
		break;
	}
	case 1: { //Point & Click
		
		x = lerp(x,x_to,snap_spd);
		y = lerp(y,y_to,snap_spd);
		
		break;	
	}
}