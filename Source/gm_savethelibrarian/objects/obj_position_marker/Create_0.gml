///@desc Init

with(obj_player) {
	contr_type	= 1;
	moving		= true;
	x_to		= other.x;
	y_to		= other.y;
	
	var _dir = point_direction(x,y,other.x,other.y);
	scr_change_player_facing(_dir)
}
image_speed = 0.5;