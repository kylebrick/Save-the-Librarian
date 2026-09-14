function scr_debug_msg(_number){
	var _arr = [
		"weeee",
		"it's me! The bug!",
		"how'd we get here anyway?",
		"schlowie wowie",
		"*bug noises*",
		"hiss",
		"fuck you, Kyle.",
		"i'll work when I feel like it.",
		"golly gee willickers"
	];	
	var _num;
	if(_number > -1) && (_number <= (array_length(_arr)-1))		_num = _number;
	else														_num = irandom_range(0,array_length(_arr)-1);
	show_debug_message(_arr[_num]);
}