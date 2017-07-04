//Scr_getInput();

if (Obj_inputHelper.backDash_key and Obj_playerStatsandFlags.stamina > 0)
{
	Obj_playerStatsandFlags.stamina -= 1;
	state = Scr_dashState;
	alarm[0] = room_speed/8;
}

if (Obj_inputHelper.bowAttack_key)
{
	image_index = 0;
	state = Scr_bowAttackState;
}

//TEST VALUES, REMOVE IF NOT USED
if (Obj_inputHelper.test_key)
{
	var p = instance_create_layer(x, y, layerelementtype_instance, Obj_projectileParent,);
	var xforce = lengthdir_x(20, face*90);
	var yforce = lengthdir_y(20, face*90);
	p.creator = id;
	with (p) 
	{
		physics_apply_impulse(x, y, xforce, yforce)
	}
}

//Due to the nature of the grab key, it is handled 
//in the collision between the player object and the 
// Obj_movableArchitectureParent

if (keyboard_check_pressed(ord("F")) && grabFlag = true)
{
	state = Scr_grabState;
}

//Get Direction
direct = point_direction(0, 0, Obj_inputHelper.xAxis, Obj_inputHelper.yAxis);

//Get Length
if (Obj_inputHelper.xAxis == 0 and Obj_inputHelper.yAxis ==0)
{
	length = 0;
}
else
{
	length = spd;
	Scr_getFace();
}

//Get Speeds
horizSpeed = lengthdir_x(length, direct);
vertSpeed = lengthdir_y(length, direct);

//Movement
phy_position_x += horizSpeed;
phy_position_y += vertSpeed;


//Sprite Control
image_speed = sign(length) * .2;
if (length ==0) image_index = 0;

switch (face) 
{
	case 0:
	sprite_index = Spr_player_right;
	break;
	
	case 1:
	sprite_index = Spr_player_up;
	break;
	
	case 2:
	sprite_index = Spr_player_left;
	break;
	
	case 3:
	sprite_index = Spr_player_down;
	break;
}
