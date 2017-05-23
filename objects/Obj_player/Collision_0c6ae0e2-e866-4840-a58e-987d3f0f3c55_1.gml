/// Restore HP when contacted
with (other)
{
	instance_destroy();
}

with (Obj_playerStatsandFlags)
{
	hp = min(hp + 1, maxHp);
}