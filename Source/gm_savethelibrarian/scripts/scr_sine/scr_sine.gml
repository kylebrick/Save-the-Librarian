///@desc scr_sine()

function scr_sine_wave(_time,_frequency,_amplitude,_midpoint){
	return sin(_time*2*pi/_frequency)*_amplitude+_midpoint;
}

function scr_sine_between(_time,_frequency,_minimum,_maximum) {
	var _midpoint	= mean(_minimum,_maximum);
	var _amplitude	= _maximum-_midpoint;
	return scr_sine_wave(_time,_frequency,_amplitude,_midpoint);
}