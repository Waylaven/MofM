/// Handle arrow mechanics
if (spd = 0)
{
	timeOut = timeOut - 1;
}
if (timeOut <= 0)
{
	instance_destroy();
}