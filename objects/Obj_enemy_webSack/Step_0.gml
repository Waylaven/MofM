/// Do things
event_inherited();
if (hp <= 0)
{
	for (i = 0; i<=2; i++)
	{
		instance_create_layer((x + random_range(-30 , 30)),(y + random_range(-30 , 30)), layerelementtype_instance, Obj_enemy_lilSpiders);
	}
	instance_destroy();
}