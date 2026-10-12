///@desc Count Down

if		(timer > 0)		{scr_debug_msg("timer",timer);			timer--; alarm[0] = global.game_spd*1;	}
else if	(timer <= 0)	{scr_debug_msg("cutscene finished.");	instance_destroy();						}