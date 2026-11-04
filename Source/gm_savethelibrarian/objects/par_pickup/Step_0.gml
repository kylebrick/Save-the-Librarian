///@desc Size & Position

switch(global.pickup) {
	case noone: {	//None
		image_index	= 0;
		x_scale_to	= scale_min;
		y_scale_to	= scale_min;
		break;
	}
	case id: {		//Self
		image_index = 1;
		x_to		= global.cursor.x_to;
		y_to		= global.cursor.y_to;
		x_scale_to	= scale_max;
		y_scale_to	= scale_max;
		break;
	}
	default: {		//Other
		image_index	= 0;
		x_scale_to	= scale_min;
		y_scale_to	= scale_min;
		break;
	}
}