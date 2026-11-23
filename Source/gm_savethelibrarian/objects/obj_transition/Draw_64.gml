///@desc Fade

draw_set_alpha(fade);
draw_set_color(c_black);

draw_rectangle(0,0,global.game_width,global.game_height,false);

draw_set_color(c_white);
draw_set_alpha(1);