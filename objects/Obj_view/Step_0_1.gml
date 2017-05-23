/// @description Insert description here
// If you are looking to change how the view works, this is
//probably not the place. Check under the room Properties and 
// Select view 0 which uses this object instead.

//Move 10% towards player
if (instance_exists(Obj_player)) 
{
x += (Obj_player.x - x) * .1;
y += (Obj_player.y - y) * .1;
}