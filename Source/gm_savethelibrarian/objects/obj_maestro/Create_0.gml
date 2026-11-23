/// @desc Init

global.vol_master	= 1.0;
global.vol_music	= 1.0;
global.vol_sfx		= 1.0;

aud_group_music		= audiogroup_music; audio_group_load(aud_group_music);
aud_group_sfx		= audiogroup_sfx;	audio_group_load(aud_group_sfx);
aud_gain_spd		= 144;