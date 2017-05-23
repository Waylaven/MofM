/// Activate Dialogue
Scr_getInput();

if (read_key)
{
	with (other)
	{
	//draw_set_color(c_white);
	//var dis = point_distance(self.x, self.y, other.x, other.y);
	//draw_text(32, 96, dis);
	
		if (!instance_exists(dialogue))
		{
			dialogue = instance_create_layer(x + xOffset, y + yOffset,layerelementtype_instance, Obj_dialogue);
			dialogue.text = text;
		}
		else
		{
			dialogue.text_page++;
			dialogue.text_count = 0;
			if (dialogue.text_page > array_length_1d(dialogue.text)-1)
			{
				with (dialogue)
				{
					instance_destroy();
				}
			}
		}
	}
}