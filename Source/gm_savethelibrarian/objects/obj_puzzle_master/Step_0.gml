///@desc Track Outcomes

switch(puzzle) {
	case 0: break; //Init
	case 1: { //Thesis Statement
		
		break;
	}
	case 2: { //Sort Keywords
		
		break;
	}
	case 3: { //Peer Review
		
		break;
	}
	case 4: { //Paper Structure
		
		break;
	}
	case 5: { //Parse Quotes
		
		break;
	}
	case 6: { //Methodology
		
		break;
	}
	case 7: { //Citing Sources
		
		break;
	}
	case 8: { //Physical Journal
		
		break;
	}
}

//Puzzle Increment
if(keyboard_check_pressed(vk_space)) {
	if(puzzle < (array_length(puzzle_names)-1)) puzzle++;
}