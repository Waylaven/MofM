/// DESTROY US ALL

if (other.id != creator and spd != 0)
{
	other.hp -= basicArrowDamage;
	
	//Knock stuff back
	var dir = point_direction(creator.x, creator.y, other.x, other.y);
	var xForce = lengthdir_x(knockback, dir);
	var yForce = lengthdir_y(knockback, dir);
	with (other)
	{
		physics_apply_impulse(x, y, xForce, yForce);
	}
}
instance_destroy();