///Knock player back
if (other.id != id)
{
	if (instance_exists(id))
	{
		var dir = point_direction(other.x, other.y, x, y);
	}
	else
	{
		var dir = point_direction(x, y, other.x, other.y);
	}
	Obj_playerStatsandFlags.hp -= damage;
	var xForce = lengthdir_x(knockback, dir);
	var yForce = lengthdir_y(knockback, dir);
	with (other)
	{
		physics_apply_impulse(x, y, -xForce, -yForce);
	}
}