/// @desc Collision Map

//Layers
layer_map = layer_tilemap_get_id(layer_get_id("Collision_Map"	));
layer_col = layer_get_name		(layer_get_id("Collision"		));

//Horizontal Gen.
var _offset = global.grid_size/2;
for(var i=0;i<room_width/global.grid_size;i++){
	var _x = i*global.grid_size;
	
	if(tilemap_get_at_pixel(layer_map,_x+_offset,y+_offset) != 0)
	{instance_create_layer(_x,y,layer_col,obj_col);}
	
	//Vertical Gen.
	for(var n=1;n<room_height/global.grid_size;n++){
		var _y = n*global.grid_size;
		if(tilemap_get_at_pixel(layer_map,_x+_offset,_y+_offset) != 0)
		{instance_create_layer(_x,_y,layer_col,obj_col);}
	}
}

scr_debug_msg("Collision map generated.");