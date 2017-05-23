//Dash State Script
if (length == 0)
{
direct = face*90;
}
length = spd * -4;

//Get Speeds
horizSpeed = lengthdir_x(length, direct);
vertSpeed = lengthdir_y(length, direct);

//Movement
phy_position_x += horizSpeed;
phy_position_y += vertSpeed;

//Create Dash Effect
var dashCopies = instance_create_depth(x, y, 0, Obj_backDashTrail);
dashCopies.sprite_index = sprite_index;
dashCopies.image_index = image_index;
