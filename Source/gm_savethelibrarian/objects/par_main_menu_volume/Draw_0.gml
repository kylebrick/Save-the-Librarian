///@desc Title & Self

//Title
switch(object_index) {
	case obj_main_menu_volume_master:	{title = "Master Volume";		break;}
	case obj_main_menu_volume_music:	{title = "Music";				break;}
	case obj_main_menu_volume_sfx:		{title = "Sound FX";			break;}
	default:							{								break;}
}
draw_set_color(c_black); draw_set_halign(fa_center);
draw_text(x-txt_x_offset,y-txt_y_offset,title);
draw_set_color(c_white); draw_set_halign(fa_left);

//Bar
draw_self();

//Marker
if(marker_show) {
	var _spr_wid = spr_width ;
	var _vol_pos = marker_pos;
	var _x		 = x-(_spr_wid/2)+(marker_pos*marker_pos_mult);
	draw_sprite_ext(
		marker_spr,0,_x,y,
		marker_scale_x,marker_scale_y,
		marker_angle,c_white,marker_alpha
	);
}