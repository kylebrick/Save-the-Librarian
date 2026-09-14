/// @desc Organize Text
voice = voices[page];
portrait = portraits[page];
portrait_index = portrait_indexes[page];

if(!is_array(text[page]))
{
	text_wrapped = scr_string_wrap(text[page],text_max_w);
	str_len = string_length(text_wrapped);
	choice_dialogue = false;
}
else
{ 
	text_array = text[page];	
	text_array_len = array_length(text_array);
	choice_dialogue = true;
}

counter = 0; //reset counter 