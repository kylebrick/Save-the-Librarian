///@desc Cutscene

if(awake) {
	if(mouse_check_button_pressed(mb_left)) image_index++;
	if(image_index >= image_number) room_goto_next();
}