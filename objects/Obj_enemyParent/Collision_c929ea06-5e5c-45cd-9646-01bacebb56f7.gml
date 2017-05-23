/// damage player
if (state != Scr_enemyStallState)
{
	Scr_KnockbackandDamage();
	state = Scr_enemyStallState;
	alarm[1] = room_speed;
}