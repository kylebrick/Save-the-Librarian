/// @desc Trigger Map

//Tile IDs
tiles = [
	obj_col,
	obj_interactable,
	obj_trigger,
	obj_warp,
	obj_gap
];

//Layers
layer_map	= layer_tilemap_get_id  (layer_get_id("Trigger_Map"	));
layer_col	= layer_get_name		(layer_get_id("Collision"	));
layer_trig	= layer_get_name		(layer_get_id("Triggers"	));

//Tile Generation
var _offset = global.grid_size/2;
for(var i=0;i<room_width/global.grid_size;i++) { //Horizontal
	var _x = i*global.grid_size;
	if(tilemap_get_at_pixel(layer_map,_x+_offset,y+_offset) != 0) {
		var _tile_id_h = tilemap_get_at_pixel(layer_map,_x+_offset,y+_offset);
		if(_tile_id_h == 1)	instance_create_layer(_x,y,layer_col, tiles[_tile_id_h-1]);
		else				instance_create_layer(_x,y,layer_trig,tiles[_tile_id_h-1]);
	}
	for(var n=1;n<room_height/global.grid_size;n++) { //Vertical
		var _y = n*global.grid_size;
		if(tilemap_get_at_pixel(layer_map,_x+_offset,_y+_offset) != 0) {
			var _tile_id_v = tilemap_get_at_pixel(layer_map,_x+_offset,_y+_offset);
			if(_tile_id_v == 1)	instance_create_layer(_x,_y,layer_col, tiles[_tile_id_v-1]);
			else				instance_create_layer(_x,_y,layer_trig,tiles[_tile_id_v-1]);
		}
	}
}	