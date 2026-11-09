///@desc scr_create_textbox(_speaker_l,_speaker_r,_dialogue)
function scr_create_textbox(_speaker_l,_speaker_r,_dialogue,_callback) {
	if(!instance_exists(obj_textbox)) && (instance_exists(global.director)) {
		var _box = instance_create_layer(global.game_width-24,0,"Text",obj_textbox);
		_box.speakers[0] = _speaker_l; //Left  speaker
		_box.speakers[1] = _speaker_r; //Right speaker
		for(var _i=0;_i<array_length(_dialogue);_i++) {
			_box._dialogue_line_add(
				_dialogue[_i][0],
				_dialogue[_i][1]
			);
			_box.dialogue_end_scr = _callback;
			_box._dialogue_line_load(0);
		}
	}
}