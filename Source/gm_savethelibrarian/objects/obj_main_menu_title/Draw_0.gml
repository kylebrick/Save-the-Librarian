///@desc Self

if(awake) {
	if(image_alpha < 1) image_alpha += fade_spd;
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
}