///@desc Float

if(awake) {
	y			= scr_sine_wave(sine_time,sine_freq,sine_amp,sine_mid);
	sine_time	+= sine_spd;
}