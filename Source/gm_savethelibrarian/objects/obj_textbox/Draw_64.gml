/// @desc Draw Textbox & Text

//update variables if lucy is above or below screen threshold
var g_x = camera_get_view_x(view_camera[0]) + global.game_width/2;
var g_y = camera_get_view_y(view_camera[0]);
//var dist_p = point_distance(g_x,g_y,par_player.x,par_player.y);
var dist_th = point_distance(g_x,g_y,g_x,g_y+box_threshold);

var _p_x, _p_y;
/*
if(portrait == spr_portrait_detective)		//detective
{
	if(portrait_alpha_player < 1) {portrait_alpha_player += portrait_alpha_speed;}
	if(portrait_alpha_other >= 1) {portrait_alpha_other = 0;}
	_p_x = box_x + box_w/4.5; _p_y = box_y + 8;
	draw_sprite_ext(portrait,portrait_index,_p_x,_p_y,1,1,0,c_white,portrait_alpha_player);
}
else if(portrait != spr_portrait_detective)	//other
{
	if(portrait_alpha_other < 1)	{portrait_alpha_other += portrait_alpha_speed;}
	if(portrait_alpha_player >= 1)	{portrait_alpha_player = 0;}
	_p_x = box_x + box_w*0.8; _p_y = box_y + 8;
	draw_sprite_ext(portrait,portrait_index,_p_x,_p_y,1,1,0,c_white,portrait_alpha_other);
}*/
if(portrait == spr_portrait_empty) //empty
{
	//_p_x = -44; _p_y = -44;
	//draw_sprite(portrait,portrait_index,_p_x,_p_y);	
}

//draw textbox
if(box_alpha < 1) {box_alpha += box_alpha_speed;}
draw_sprite_ext(box,0,box_x,box_y,box_w/box_spr_w,box_h/box_spr_h,0,c_white,box_alpha);

//draw text
if(!choice_dialogue)
{
	//text
	if(!pause) && (counter < str_len)
	{
		counter += text_speed;
	
		//only play text sound if counter is divisible by 4
		if(counter mod 4 == 0) {audio_play_sound(voice,10,false);}
	
		//pause if typing unique character
		switch(string_char_at(text_wrapped, counter))
		{
			case ",": pause = true; alarm[0] = 15; break;
			case ".":
			case "?":
			case "!": pause = true; alarm[0] = 25; break;
		}
	}
	var substr = string_copy(text_wrapped,1,counter);

	c = text_col;
	draw_text_color(text_x,text_y,substr,c,c,c,c,box_alpha);
}
else
{
	//if text is an array... branching dialogue
	c = text_col;
	var i = 0; var y_add = 0; repeat(text_array_len)
	{
		if(choice == i) {c = choice_col; draw_text_color((port_w/2)+box_w-choice_offset,text_y+y_add,"<",c,c,c,c,box_alpha);} else {c = text_col;}
		draw_text_ext_color(text_x,text_y+y_add,text_array[i],text_height,text_max_w,c,c,c,c,box_alpha);
		y_add += string_height_ext(text_array[i],text_height,text_max_w);
		i++;
	}
}