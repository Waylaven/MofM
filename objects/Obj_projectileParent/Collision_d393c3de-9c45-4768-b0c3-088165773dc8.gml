/// @description Insert description here

//Do damage
if (other.id != creator)
{
	other.hp -=1;


//Knockback
//Knock stuff back
	var dir = point_direction(0, 0, phy_speed_x, phy_speed_y);
	var xForce = lengthdir_x(knockback, dir);
	var yForce = lengthdir_y(knockback, dir);
	with (other)
	{
		physics_apply_impulse(x, y, xForce, yForce);
	}
	
	//For pierce.
	//alarm[0] = 1;
}	