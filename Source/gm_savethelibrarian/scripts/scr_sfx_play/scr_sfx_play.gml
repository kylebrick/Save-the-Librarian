///@desc scr_sfx_play(sfx,priority,loop)
function scr_sfx_play(_sfx,_loop,_prior=undefined) {
	if(_prior == undefined) audio_play_sound(_sfx,1,		_loop);
	else					audio_play_sound(_sfx,_prior,	_loop);
}