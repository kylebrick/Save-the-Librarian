/// @desc Draw Textbox & Text

event_inherited();

if(char == undefined) exit;

//Box
if(box_alpha < 1) box_alpha += box_alpha_spd;
	draw_sprite_ext(box_spr,0,box_x,box_y,box_w/box_spr_w,box_h/box_spr_h,0,c_white,box_alpha);

//Portrait
if(char.portrait != -1) {
	draw_sprite_ext(char.portrait,0,box_x-4,box_y-40,1,1,0,c_white,box_alpha);	
}

//Text
draw_set_font(char.font);
var _sub_str = string_copy(txt_wrap,1,counter);
draw_text_color(txt_x,txt_y,_sub_str,c_white,c_white,c_white,c_white,box_alpha);