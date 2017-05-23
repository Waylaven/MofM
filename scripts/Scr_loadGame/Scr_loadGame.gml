//Loads the game from the text file. The file is then made into a string 
//and decoded. Then its data is taken.
var file = file_text_open_read(working_directory + "mysavegame.txt");
var save_string = file_text_read_string(file);
file_text_close(file);
save_string = base64_decode(save_string);
var save_data = json_decode(save_string);

//Assign the room the player is in, if the player exists
var save_room = save_data[? "room"];
if (room != save_room)
{
	room_goto(save_room);
}

//Give the player their stats
with (Obj_playerStatsandFlags)
{
	player_xstart = save_data[? "x"];
	player_ystart = save_data[? "y"];
	if (instance_exists(Obj_player))
	{
		Obj_player.x = player_xstart;
		Obj_player.y = player_ystart;
		Obj_player.phy_position_x = player_xstart;
		Obj_player.phy_position_y = player_ystart;
	}
	else
	{
		instance_create_depth(player_xstart, player_ystart, layerelementtype_instance, Obj_player);
	}
	hp = save_data[? "hp"];
	maxHp = save_data[? "maxHp"];
	stamina = save_data[? "stamina"];
	maxStamina = save_data[? "maxStamina"];
}

ds_map_destroy(save_data);