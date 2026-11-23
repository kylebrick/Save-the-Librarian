///@desc Adjust Position

switch(state) {
	case 0: {
		x_to = xstart;
		y_to = ystart;
		break;
	}
	case 1: {
		x_to = xstart;
		y_to = ystart-move_pos_offset;
		break;
	}
	default: break;
}
x = lerp(x,x_to,move_spd);
y = lerp(y,y_to,move_spd);