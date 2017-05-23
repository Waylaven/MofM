// Enemy Wander
Scr_PlayerCheck();
if (point_distance(x, y, targetX, targetY) > spd)
{
	var dir = point_direction (x, y, targetX, targetY);
	var horizSpeed = lengthdir_x(spd, dir);
	var vertSpeed = lengthdir_y(spd, dir);
	if (horizSpeed != 0)
	{
		image_xscale = sign(horizSpeed);
	}
	phy_position_x += horizSpeed;
	phy_position_y += vertSpeed;
}