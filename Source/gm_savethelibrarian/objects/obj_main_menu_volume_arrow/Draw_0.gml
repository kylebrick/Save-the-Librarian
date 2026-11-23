///@desc Self

//Self
var _off = (sprite_get_width(vol_bar.sprite_index)/2)+pos_offset;
x		 = vol_bar.x+(_off*facing);
y		 = vol_bar.y;
draw_sprite_ext(
	sprite_index,image_index,
	x,y,(scale_x)*facing,scale_y,
	0,c_white,1
);

//Scale
scale_x = lerp(scale_x,scale_x_to,scale_spd);
scale_y = lerp(scale_y,scale_y_to,scale_spd);

//Debug
/*
draw_set_color(c_aqua);
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
draw_set_color(c_white);