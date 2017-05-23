if (instance_exists(Obj_player))
{
	var dis = point_distance(x, y, Obj_player.x, Obj_player.y);
	if (dis < sight)
	{
		state = Scr_enemyChaseState;
		targetX = Obj_player.x;
		targetY = Obj_player.y;
	}
	else
	{
		Scr_enemyChooseState();
	}
}
else
{
	Scr_enemyChooseState();
}