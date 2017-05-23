/// Initialize the player character's stats
hp = 10;
maxHp = hp;
stamina = 3;
maxStamina = stamina;
lv = 1;
sCounter = 0;



//Get the player's xstart and ystart
//This is used to determine where the player starts in a room
//If the player saves and quits in a room, when they load, they will be at the beginning 
//of the room. This is meant to prevent the player from locking up their game.
//At worst, they softlock and have to reload
if (instance_exists(Obj_player))
{
	player_xstart = Obj_player.x;
	player_ystart = Obj_player.y;
}
else
{
	player_xstart = 0;
	player_ystart = 0;
}

previous_room = room;
room_start_action = -1;

