/// @desc Init

//textbox
box						= spr_textbox;
box_w					= 120;
box_h					= 40;
box_spr_w				= sprite_get_width(box);
box_spr_h				= sprite_get_height(box);
box_x					= ((global.game_width*2) - box_w) * 0.5;
box_y					= ((global.game_height*2)*0.99) - box_h;
box_threshold			= 100;
box_alpha				= 0;
box_alpha_speed			= 0.144;

//portrait
portrait				= spr_portrait_empty;
portrait_index			= 0;
portrait_alpha_player	= 0;
portrait_alpha_other	= 0;
portrait_alpha_speed	= box_alpha_speed;
port_w					= sprite_get_width(portrait);
port_h					= sprite_get_height(portrait);
port_x					= box_x + 4;
port_y					= box_y + 2;

//text
x_buffer				= 8;
y_buffer				= 4;
text_x					= box_x + x_buffer;
text_y					= box_y + y_buffer;
text_max_w				= box_w - x_buffer - 4;
text_height				= string_height("M");

counter					= 0;
text_speed				= 1;
text_col				= c_white;
font					= global.font_main;
draw_set_font(font);

page					= 0; 
text[0]					= "";
voice					= snd_fx_msg;

//misc.
choice					= 0;
choice_offset			= 4;
choice_col				= c_fuchsia;
choice_dialogue			= false;
pause					= false;
key_interact			= ord("Z");
//scr_player_control(false,false,false);