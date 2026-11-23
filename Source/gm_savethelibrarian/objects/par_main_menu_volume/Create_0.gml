///@desc Init

x_to				= xstart ;
y_to				= ystart ;
move_pos_offset		= 144	 ;
txt_x_offset		= 0		 ;
txt_y_offset		= 13	 ;
move_spd			= 0.2	 ;
del_min				= 0.15	 ;
del_max				= 0.25	 ;

spr_width			= sprite_get_width (sprite_index);
spr_height			= sprite_get_height(sprite_index);

title				= "Empty";
state				= 0		 ;
volume_type			= global.vol_master;

//Marker
marker_show			= false	 ;
marker_pos			= 5		 ;
marker_pos_mult		= 3		 ;
marker_pos_min		= 0		 ;
marker_pos_max		= 10	 ;
marker_spr			= spr_main_menu_volume_marker;
marker_scale_x		= 1		 ;
marker_scale_y		= 1		 ;
marker_alpha		= 1		 ;
marker_angle		= 0		 ;

//Arrows
var _arr_r = instance_create_depth(x,y,depth-1,obj_main_menu_volume_arrow); _arr_r.facing =  1; _arr_r.vol_bar = id;
var _arr_l = instance_create_depth(x,y,depth-1,obj_main_menu_volume_arrow); _arr_l.facing = -1; _arr_l.vol_bar = id;