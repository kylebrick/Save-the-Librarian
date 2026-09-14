/// @desc Reset Once-Through
/*
switch(room)
{
	case rm_001_intro: 
	{
		//intro cutscene
		if(!instance_exists(obj_cutscene)) && (!intro_cutscene)
		{
			scr_create_cutscene(scr_scene_001_prelude(t_scene_info));
			intro_cutscene = true;
		}
		else if(intro_cutscene)
		{
			//persistent checks
				//reset camera
				with(obj_intro_camera)
				{
					cam_x = 80; cam_y = 767; 
					intro_end = true;					
				}
				//activate chest
				with(obj_chest)
				{
					image_index = image_number;
					once_through = true;
					textbox_check = true;
					activated = true;
				}
				//destroy objects
				instance_destroy(obj_intro_darkroom);
				instance_destroy(obj_lockedgate);
				instance_destroy(inst_16360E82);
				//reset warp intro
				obj_warp.intro = false;
		}
		break;
	}
	case rm_002_dreamcatcher:
	{
		//intro cutscene
		if(!instance_exists(obj_cutscene)) && (!surprise_cutscene)
		{
			scr_create_cutscene(scr_scene_002_dreamcatcher(t_scene_info));
			surprise_cutscene = true;
		}
		else if(intro_cutscene)
		{
		}
		break;	
	}
	default: break;
}