//Chase Player
Scr_PlayerCheck();
var dir = point_direction (x, y, targetX, targetY);
var horizSpeed = lengthdir_x(spd, dir);
var vertSpeed = lengthdir_y(spd, dir);
if (horizSpeed != 0)
{
	image_xscale = sign(horizSpeed);
}
phy_position_x += horizSpeed;
phy_position_y += vertSpeed;