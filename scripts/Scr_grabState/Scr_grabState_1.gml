//Get Direction
direct = point_direction(0, 0, xAxis, yAxis);

//Get Length
if (xAxis == 0 and yAxis ==0)
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

horizSpeed = horizSpeed/2;
vertSpeed = vertSpeed/2;

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

if (keyboard_check_released(ord("F")))
{
	state = Scr_moveState;
}