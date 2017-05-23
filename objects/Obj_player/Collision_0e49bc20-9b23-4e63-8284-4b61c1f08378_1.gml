///Make stuff move

//Grabflag signals that the object is able to be grabbed. This is to ensure that
//the character does not just try and grab everything willy nilly.
grabFlag = true;

//TODO add on code to allow 4 pushing and 4 pulling animations based on direction
if (state = Scr_grabState)
{
	//if player is on right of object
	if ((point_direction(other.x,other.y,x,y) < 45 && point_direction(other.x,other.y,x,y) > 0)
	|| (point_direction(other.x,other.y,x,y) > 315 && point_direction(other.x,other.y,x,y) < 360) 
	
	//if player is on left of object
	||  ((point_direction(other.x,other.y,x,y) > 135 && point_direction(other.x,other.y,x,y) < 180)
	|| (point_direction(other.x,other.y,x,y) > 180 && point_direction(other.x,other.y,x,y) < 225)))
	{
		phy_position_x += Obj_player.horizSpeed;
		
		with (other)
		{
			phy_position_x += Obj_player.horizSpeed;
		}
	}
	//if player is on top of object
	if ((point_direction(other.x,other.y,x,y) < 90 && point_direction(other.x,other.y,x,y) > 45)
	|| (point_direction(other.x,other.y,x,y) > 90 && point_direction(other.x,other.y,x,y) < 135)
	//if player is on bottom of object
	|| ((point_direction(other.x,other.y,x,y) < 270 && point_direction(other.x,other.y,x,y) > 225)
	||  (point_direction(other.x,other.y,x,y) > 270 && point_direction(other.x,other.y,x,y) < 315)))
	{
		phy_position_y += Obj_player.vertSpeed;
		
		with (other)
		{
			phy_position_y += Obj_player.vertSpeed;
		}
	}
}