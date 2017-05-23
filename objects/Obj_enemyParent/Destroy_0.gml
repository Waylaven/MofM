/// Drop things

//Random HP drop
if (Scr_chanceEvents(.99))
{
instance_create_layer(x, y, layerelementtype_instance, Obj_hpDrop);
}