/// Remember the player's starting position
//Any room where the player's stats are, but the player is not, add to the list

if (room == Room_pause) 
{
	exit;
}

switch (room_start_action)
{
	//Return
	case 0:
	break;
	
	//Make new room
	case 1:
	default:
	if (instance_exists(Obj_player))
	{
		player_xstart = Obj_player.x;
		player_ystart = Obj_player.y;
	}
	break;
	
	//Load
	case 2:
	Scr_loadGame();
	break;
}


//Reset the room
room_persistent = false;
room_start_action =	1;