///@desc Init

state					= 0;
scene_fade_alpha		= 0;
scene_fade_spd			= 0.05;
scene_delay_timers		= [
	1,		//Wait
	1,		//Wait
	0.25,	//Fade -> 01 -			No Text
	4,		//Fade -> 01 -			w/ Text
	0.25,	//Fade -> 01 -> 02 -	No Text
	4,		//Fade -> 02 -			w/ Text
	0.25,	//Fade -> 02 -> 03 -	No Text
	4,		//Fade -> 03 -			w/ Text
	0.25,	//Fade -> 03 -> 04 -	No Text
	3,		//Fade -> 04 -			w/ Text
	0.25,	//Fade to Black
	1		//Next Room
];
image_speed				= 0;
alarm[0]				= global.game_spd*scene_delay_timers[0];