///@desc Cutscene Action Library
/*
	Every action struct begins w/ "start();" and ends w/ "finished();"
	obj_cutscene's step event only calls "start()" once and then "finished()" every frame until it returns true.
	
	This file, alongside obj_macro, contains every reference to obj_director/camera/maestro, etc.
	Ideally, only one or the other needs to be checked if cross-referencing throws an error.


//Functions
#region


function action_end			(					)	constructor {
	start = function() { }
	is_finished = function() { return true; }
}
function action_wait		(_frames			)	constructor {
	frames = _frames;
	timer = 0;
	start = function() { timer = frames; }
	is_finished = function() {
		timer--;
		return (timer <= 0);
	}
}
function action_move		(_char,_dx,_dy,_spd	)	constructor {
	char = _char;
	dx = _dx; dy = _dy; spd = _spd;
	start = function() {
		global.director.director_move_actor(char, dx, dy, spd);
	}
	is_finished = function() {
		return global.director.director_actor_finished_moving(char);
	}
}
function action_speak		(_char,_txt			)	constructor {
	char = _char;
	text = _text;
	start = function() {
		var _box = instance_create_layer(room_width-32,y,"Macro", obj_textbox); //swap "Instances" for your actual GUI/textbox layer
		_box.set_line(char, text);
	}
	is_finished = function() {
		return !instance_exists(obj_textbox);
	}
}
function action_parallel	(_actions			)	constructor {
	actions = _actions; //array of already-constructed Act_* structs
	start = function() {
		for (var i = 0; i < array_length(actions); i++) { actions[i].start(); }
	}
	is_finished = function() {
		for (var i = 0; i < array_length(actions); i++) {
			if (!actions[i].is_finished()) { return false; }
		}
		return true;
	}
}
function action_portrait	(_char,_port_ind	)	constructor {
	char  = _char;
	index = _portrait_index;
	start = function() { char.portrait = index; }
	is_finished = function() { return true; } //instantaneous -- no waiting on this one
}
function action_music_cue	(_track,_fade_time	)	constructor {
	track = _track; fade = _fade_time;
	start = function() { global.maestro.play_track(track, fade); } //name this to match obj_maestro's actual API
	is_finished = function() { return true; } //fire-and-forget -- cutscene doesn't wait on music
}
function action_camera_pan	(_x,_y,_spd			)	constructor {
	target_x = _x; target_y = _y; spd = _spd;
	start = function() { global.camera.pan_to(target_x, target_y, spd); } //name this to match obj_camera's actual API
	is_finished = function() { return global.camera.is_pan_finished(); }
}

#endregion

//Author Commands 
/*
	These commands push into obj_cutscene's queue.
	It can be called by name (no "with") as only one exists.

#region

function wait				(_frames)					{array_push(obj_cutscene.queue, new action_wait			(_frames			));}
function move				(_char, _dx, _dy, _spd)		{array_push(obj_cutscene.queue, new action_move			(_char,_dx,_dy,_spd	));}
function speak				(_char,_txt)				{array_push(obj_cutscene.queue, new action_speak		(_char,_txt			));}
function portrait			(_char,_port_ind)			{array_push(obj_cutscene.queue, new action_portrait		(_char,_port_ind	));}
function parallel			(_actions)					{array_push(obj_cutscene.queue, new action_parallel		(_actions			));}
function music_cue			(_track,_fade)				{array_push(obj_cutscene.queue, new action_music_cue	(_track,_fade		));}
function camera_pan			(_x,_y,_spd)				{array_push(obj_cutscene.queue, new action_camera_pan	(_x,_y,_spd			));}
function cutscene_end		()							{array_push(obj_cutscene.queue, new action_end			(					));}

#endregion