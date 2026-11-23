///@desc Adjust Volume

audio_master_gain(global.vol_master);
audio_group_set_gain(aud_group_music,global.vol_music*global.vol_master,aud_gain_spd);
audio_group_set_gain(aud_group_sfx,	 global.vol_sfx	 *global.vol_master,aud_gain_spd);