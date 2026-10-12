function scr_debug_msg(
	_arg0 = undefined,
	_arg1 = undefined
){
	//Debug Messages List - "Weeee"
	#region
	
	var _arr = [
		"weeee.",
		"it's me! The bug!",
		"how'd we get here anyway?",
		"schlowie wowie.",
		"*bug noises*",
		"*hiss*",
		"i'll work when I feel like it.",
		"golly gee willickers.",
		"you'll never find me."
	];
	
	#endregion
	
	//No arguments? -> Display random debug message.
	if(_arg0 == undefined) && (_arg1 == undefined)	{show_debug_message(_arr[irandom(array_length(_arr)-1)]);		return;}
	
	//First argument is valid? -> Display argument0.
	if(_arg0 != undefined) && (_arg1 == undefined)	{show_debug_message(string(_arg0));								return;}
	
	//Both arguments are valid? -> Display argument0 & argument1.
	if		(is_string(_arg0))						{show_debug_message(_arg0			+ " = "	+ string(_arg1));	return;}
	else if	(is_string(_arg1))						{show_debug_message(_arg1			+ " = "	+ string(_arg0));	return;}
	else											{show_debug_message(string(_arg0)	+ ", "	+ string(_arg1));	return;}
}