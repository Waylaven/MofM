/// Draw Dialogue
/*
//Get last space
if (string_char_at(text[text_page], text_count) == " ")
{
	last_space = text_count;
}

//Add smart returns
var text_words = Scr_stringCopy(text[text_page], 1, text_count);
if (string_width(text_words) >= width - (margin*2))
{
	//Remove the Space
	text[text_page] = string_delete(text[text_page], last_space, 1);
	
	//Add a return
	text[text_page] = string_insert( "#", text[text_page], last_space);	
}

//Get visible text
*/
text_visible = string_copy(text[text_page], 0, text_count);
if (instance_exists(Obj_player))
{
	//var dis = point_distance(x, y, Obj_player.x, Obj_player.y);
	if (abs(x - Obj_player.x) > sight or abs(y - Obj_player.y) > sight)
	{
		instance_destroy();
	}
}
var xx = (x - camera_get_view_x(view_camera[0]))*display_scale;
var yy = (y - camera_get_view_y(view_camera[0]))*display_scale;
draw_text_ext(xx + margin, yy + margin, text_visible, -1, width - (margin*2));
text_count += spd;

//Add to count
//text_count += spd;