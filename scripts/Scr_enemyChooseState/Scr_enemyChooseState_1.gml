// Sets enemy state
if (alarm[0] <= 0)
{
	state = choose(Scr_enemyWanderState, Scr_enemyIdleState);
	alarm[0] = room_speed*irandom_range(2 , 4);
	targetX = random(room_width);
	targetY = random(room_height);
}