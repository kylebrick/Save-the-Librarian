///@desc Init

with(obj_player) {
	contr_type = 1;
	x_to = other.x;
	y_to = other.y;
	
	var _point_dir = point_direction(x,y,other.x,other.y);
	if(_point_dir >= 0	)  && (_point_dir < 45	) image_index = 3;
	if(_point_dir >= 45	)  && (_point_dir < 90	) image_index = 0;
	if(_point_dir >= 90 )  && (_point_dir < 135	) image_index = 0;
	if(_point_dir >= 135 ) && (_point_dir < 180	) image_index = 2;
	if(_point_dir >= 180 ) && (_point_dir < 225	) image_index = 2;
	if(_point_dir >= 225 ) && (_point_dir < 270	) image_index = 1;
	if(_point_dir >= 270 ) && (_point_dir < 315 ) image_index = 1;
	if(_point_dir >= 315 ) && (_point_dir < 360 ) image_index = 3;
	show_debug_message(_point_dir);
}
image_speed = 0.5;