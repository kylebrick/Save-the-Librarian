/// @desc Trigger Map

//Tile IDs & Layers
#region

tiles = [
	obj_tile_move,
	obj_tile_col,
	obj_tile_gap,
	obj_tile_interact,
	obj_tile_trigger
];
layer_map	= layer_tilemap_get_id  (layer_get_id("Trigger_Map"	));
layer_move	= layer_get_name		(layer_get_id("Move"		));
layer_col	= layer_get_name		(layer_get_id("Collision"	));
layer_gap	= layer_get_name		(layer_get_id("Gaps"		));
layer_int	= layer_get_name		(layer_get_id("Interact"	));
layer_trig	= layer_get_name		(layer_get_id("Triggers"	));

#endregion

//Tile Generation
var _offset = global.grid_size/2;
for(var i=0;i<room_width/global.grid_size;i++) { //Horizontal
	var _x = i*global.grid_size;
	if(tilemap_get_at_pixel(layer_map,_x+_offset,y+_offset) != 0) {
		var _tile_id_h = tilemap_get_at_pixel(layer_map,_x+_offset,y+_offset);
		switch(_tile_id_h) {
			case 1:  { /*Move*/			_spawn_tile(_x,y,tiles[_tile_id_h-1],layer_move) break;}
			case 2:  { /*Collision*/	_spawn_tile(_x,y,tiles[_tile_id_h-1],layer_col ) break;}
			case 3:  { /*Gap*/			_spawn_tile(_x,y,tiles[_tile_id_h-1],layer_gap ) break;}
			case 4:  { /*Interact*/		_spawn_tile(_x,y,tiles[_tile_id_h-1],layer_int ) break;}
			case 5:  { /*Triggers*/		_spawn_tile(_x,y,tiles[_tile_id_h-1],layer_trig) break;}
			default: {																	 break;}
		}
	}
	for(var n=1;n<room_height/global.grid_size;n++) { //Vertical
		var _y = n*global.grid_size;
		if(tilemap_get_at_pixel(layer_map,_x+_offset,_y+_offset) != 0) {
			var _tile_id_v = tilemap_get_at_pixel(layer_map,_x+_offset,_y+_offset);
			switch(_tile_id_v) {
				case 1:  { /*Move*/			_spawn_tile(_x,_y,tiles[_tile_id_v-1],layer_move)	break;}
				case 2:  { /*Collision*/	_spawn_tile(_x,_y,tiles[_tile_id_v-1],layer_col)	break;}
				case 3:  { /*Gap*/			_spawn_tile(_x,_y,tiles[_tile_id_v-1],layer_gap )	break;}
				case 4:  { /*Interact*/		_spawn_tile(_x,_y,tiles[_tile_id_v-1],layer_int )	break;}
				case 5:  { /*Triggers*/		_spawn_tile(_x,_y,tiles[_tile_id_v-1],layer_trig)	break;}
				default: {																		break;}
			}
		}
	}
}

//Functions
function _spawn_tile(_x,_y,_id,_lay) {
	instance_create_layer(_x,_y,_lay,_id);
}