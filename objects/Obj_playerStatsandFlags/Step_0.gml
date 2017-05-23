//Run player related events

//Recharge stamina
if (room != Room_pause)
{
	if (stamina < maxStamina)
	{
		sCounter += 1;
	}

	if (sCounter >= 180)
	{
		stamina += 1;
		sCounter = 0;
	}
}

//Pause the game
if (Obj_inputHelper.pause_key)
{
	if (room != Room_pause)
	{
		
		if (instance_exists(Obj_playerStatsandFlags))
		{
			Obj_player.persistent = false;
		}
		previous_room = room;
		room_persistent = true;
		room_goto(Room_pause);
	}
	else
	{
		room_goto(previous_room);	
	}
	Obj_inputHelper.pause_key = false;
}