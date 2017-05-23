/// Control the menu
if (alarm[0] <= 0)
{
	if (Obj_inputHelper.down_key)
	{
		if (menu_index < array_length_1d(option)-1)
		{
			menu_index++;
		}
		else
		{
			menu_index = 0;
		}
	alarm[0] = room_speed/6;
	}
	
	if (Obj_inputHelper.up_key)
	{
		if (menu_index > 0)
		{
			menu_index--;
		}
		else
		{
			menu_index = array_length_1d(option)-1;
		}
		alarm[0] = room_speed/6;
	}
	
	if (Obj_inputHelper.backDash_key)
	{
		switch (menu_index)
		{
			case 0:
			//0 is room_start in Obj_playerStatsandFlags
			room_start_action = 0;
			room_goto(Obj_playerStatsandFlags.previous_room)
			break;
			
			case 1:
			Scr_saveGame();
			break;
			
			case 2:
			//2 is load in Obj_playerStatsandFlags
			Obj_playerStatsandFlags.room_start_action = 2;
			room_goto(Obj_playerStatsandFlags.previous_room);
			break;
			
			case 3:
			game_end();
			break;
			
			default:
			break;
		}
		Obj_inputHelper.backDash_key = false;
	}
}