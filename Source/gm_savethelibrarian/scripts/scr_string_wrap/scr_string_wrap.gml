///@function scr_string_wrap(_txt,_max_w)
///@param	{string}	_txt		string to wrap.
///@param	{real}		_max_w		how wide before wrap takes place?
function scr_string_wrap(){
	var _str = argument0; var str_len = string_length(_str);	var _sub_str;
	var _mw	 = argument1; var _l = 1; var _c = 1;
	repeat(str_len)
	{
		_sub_str = string_copy(_str,1,_c);
		if(string_char_at(_str,_c) == " ") {_l = _c;}
		if(string_width(_sub_str)>_mw)
		{
			_str = string_delete(_str,_l,1);
			_str = string_insert("\n",_str,_l);
		}
		_c++;
	}
	return _str;
}