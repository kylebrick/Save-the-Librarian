///@desc scr_change_player_facing(_dir)
function scr_change_player_facing(_dir){
	var _d = _dir;
	if(_d >= 0	)  && (_d < 45	) face_dir = 3;
	if(_d >= 45	)  && (_d < 90	) face_dir = 0;
	if(_d >= 90 )  && (_d < 135	) face_dir = 0;
	if(_d >= 135 ) && (_d < 180	) face_dir = 2;
	if(_d >= 180 ) && (_d < 225	) face_dir = 2;
	if(_d >= 225 ) && (_d < 270	) face_dir = 1;
	if(_d >= 270 ) && (_d < 315 ) face_dir = 1;
	if(_d >= 315 ) && (_d < 360 ) face_dir = 3;
}