//Save the game

//Dead people can't save
if (!instance_exists(Obj_playerStatsandFlags))
{
	exit;
}

//This creates a map that the saved values are stored in
var save_data = ds_map_create();

//This uses an accessor to change data stored in the map
//https://www.yoyogames.com/blog/35
//Storing hp would be ds[? "HP"] = "Obj_playerStatsandFlags.HP";
//Recovering = Obj_playerStatsandFlags.HP = ds[? "HP"];
with (Obj_playerStatsandFlags)
{
	save_data[? "room"] = previous_room;
	save_data[? "x"] = player_xstart;
	save_data[? "y"] = player_ystart;
	save_data[? "hp"] = hp;
	save_data[? "maxHp"] = maxHp;
	save_data[? "stamina"] = stamina;
	save_data[? "maxStamina"] = maxStamina;
}

//save the data
var save_string = json_encode(save_data);

//destroy the old map
ds_map_destroy(save_data);

//This makes the file hard to change. You don't want people cheating
//But I mean, if they put in enough effort to de-encrypt it, whatever I guess
save_string = base64_encode(save_string);

//This creates a save file under c:/users/"your name"/appdata/local/ the game file
var file = file_text_open_write(working_directory + "mysavegame.txt");
file_text_write_string(file, save_string);
file_text_close(file);



show_message("Game saved");