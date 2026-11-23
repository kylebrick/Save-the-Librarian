///@desc Adjust Position

switch(state) {
	case 0: {
		x_to = xstart;
		y_to = ystart;
		break;
	}
	case 1: {
		x_to = xstart-move_pos_offset;
		y_to = ystart;
		if(!marker_show) && (x < abs(x_to+0.1)) marker_show = true;
		break;
	}
	default: break;
}
x = lerp(x,x_to,move_spd);
y = lerp(y,y_to,move_spd);