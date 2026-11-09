///@desc Init

x_to				= xstart				;
y_to				= ystart				;
move_spd			= global.cursor.move_spd;
x_scale_to			= image_xscale			;
y_scale_to			= image_yscale			;
scale_min			= 1						;
scale_max			= scale_min*1.15		;
scale_spd			= 0.25					;
image_speed			= 0						;

pickup_snds			= [
	sfx_pickup_01,
	sfx_pickup_02,
	sfx_pickup_03,
	sfx_pickup_04,
	sfx_pickup_05
];

snap_node	= noone;
snap_radius = 24;