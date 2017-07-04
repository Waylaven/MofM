///Do attacks
image_speed = 0.65;
if (image_index > 4 and attacked == false)
{
	switch (sprite_index)
	{
		case Spr_player_right:
		sprite_index = Spr_player_right_attack;
		var cHelper = instance_create_layer(x + 40, y, layerelementtype_instance, Obj_arrow_right);
		cHelper.creator = id;
		attacked = true;
		break;
	
		case Spr_player_left:
		sprite_index = Spr_player_left_attack;
		cHelper = instance_create_layer(x - 40, y, layerelementtype_instance, Obj_arrow_left);
		cHelper.creator = id;
		attacked = true;
		break;
	
		case Spr_player_down:
		sprite_index = Spr_player_down_attack;
		//Code to use when bow animation is made
		/*if (image_index >= 3 and attacked == false)
		{
		 instance_create_layer(x, y + 40, layerelementtype_instance, Obj_arrow_down);
		 attacked = true;
		 attCounter = 0;
		 //o
		}
		*/
		cHelper = instance_create_layer(x, y + 40, layerelementtype_instance, Obj_arrow_down);
		cHelper.creator = id;
		attacked = true;
		break;
	
		case Spr_player_up:
		sprite_index = Spr_player_up_attack;
		cHelper = instance_create_layer(x, y - 40, layerelementtype_instance, Obj_arrow_up);
		cHelper.creator = id;
		attacked = true;
		break;
	}
}