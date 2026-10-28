///@desc Float

if(image_index > image_number-1) {
	image_index = image_number-1;
	image_speed = 0;
	
	y			= sine_mid;
	sine_float	= true;
}
else if(sine_float) {
	
	y			= scr_sine_wave(sine_time,sine_freq,sine_amp,sine_mid);
	sine_time	+= sind_spd;
}