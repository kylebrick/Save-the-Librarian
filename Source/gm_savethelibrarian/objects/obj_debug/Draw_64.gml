///@desc Debug Console

event_inherited();

for(var i=0;i<array_length(debug_cons_array);i++) {
	draw_text_colour(
		debug_cons_x,
		(debug_cons_y+debug_cons_sep)*i,
		string(debug_cons_array[i]),
		c_white,c_white,c_white,c_white,
		1);
}