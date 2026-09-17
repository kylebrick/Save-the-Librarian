///@desc Character Constructor
///What they look like, how they sound, position in the room, etc.
///Connects to and owned/registered by obj_director.
function character(_name,_font,_voice,_portrait) constructor {
	inst			= noone;
	
	name			= _name;
	font			= _font;
	voice			= _voice;
	portrait		= _portrait;
	
	x_init			= 0;
	y_init			= 0;
	x_to 			= 0;
	y_to 			= 0;
	
	move_spd		= 0;
	moving			= false;
}