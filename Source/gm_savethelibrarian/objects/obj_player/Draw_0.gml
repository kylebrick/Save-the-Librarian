///@desc Change Direction

var _key_up		= keyboard_check(vk_up		);
var _key_down	= keyboard_check(vk_down	);
var _key_left	= keyboard_check(vk_left	);
var _key_right	= keyboard_check(vk_right	);

if		(_key_up)		image_index = 0;
else if	(_key_down)		image_index = 1;
else if (_key_left)		image_index = 2;
else if (_key_right)	image_index = 3;

draw_self();