///@desc Offset w/ Player

switch(ref_player.image_index) {
	case 0: {
		x_to = ref_player.x;
		y_to = ref_player.y-y_offset;
		break;
	}
	case 1: {
		x_to = ref_player.x;
		y_to = ref_player.y+y_offset; 
		break;
	}
	case 2: {
		x_to = ref_player.x-x_offset;
		y_to = ref_player.y;
		break;
	}
	case 3: {
		x_to = ref_player.x+x_offset;
		y_to = ref_player.y;
		break;
	}
}

x = lerp(x,x_to,1);
y = lerp(y,y_to,1);