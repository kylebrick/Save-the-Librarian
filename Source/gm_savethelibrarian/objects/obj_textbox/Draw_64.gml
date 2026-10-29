/// @desc Text & Textbox

event_inherited();

if(char == undefined) exit;

//Backdrop
if(backdrop_alpha < backdrop_alpha_max) backdrop_alpha += (box_alpha_spd/2);
draw_set_alpha(backdrop_alpha);
draw_rectangle_colour(0,0,global.game_width,global.game_height,
c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

//Box
if(box_alpha < 1) box_alpha += box_alpha_spd;
draw_sprite_stretched(
	box_spr,0,
	box_x-(box_w/2),
	box_y,
	box_w,
	box_h
);

//Portraits
if(speakers[0] != undefined) {
	draw_sprite_ext(
		speakers[0].portrait,0,
		box_x-speakers_sep,box_y,
		1,1,0,c_white,box_alpha
	);
}
if(speakers[1] != undefined) {
	draw_sprite_ext(
		speakers[1].portrait,0,
		box_x+speakers_sep,box_y,
		1,1,0,c_white,box_alpha
	);
}

//Text
draw_set_font(char.font);
var _sub_str = string_copy(txt_wrap,1,counter);
draw_text_color(txt_x,txt_y,_sub_str,c_white,c_white,c_white,c_white,box_alpha);