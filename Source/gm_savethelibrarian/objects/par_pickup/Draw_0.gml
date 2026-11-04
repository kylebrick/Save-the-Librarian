///@desc Self

x				= lerp(x,			x_to,		move_spd );
y				= lerp(y,			y_to,		move_spd );
image_xscale	= lerp(image_xscale,x_scale_to,	scale_spd);
image_yscale	= lerp(image_yscale,y_scale_to,	scale_spd);
draw_sprite_ext(
	sprite_index,image_index,x,y,
	image_xscale,image_yscale,
	image_angle,c_white,image_alpha
);