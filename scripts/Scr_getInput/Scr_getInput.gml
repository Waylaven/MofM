//Movement Variables
right_key = keyboard_check_direct(ord("D"));
left_key = keyboard_check_direct(ord("A"));
up_key = keyboard_check_direct(ord("W"));
down_key = keyboard_check_direct(ord("S"));

//Battle Commands
backDash_key = keyboard_check_pressed(ord("Q"));
bowAttack_key = keyboard_check_pressed(ord("E"));
//POTENTIAL BOW CHANGE, DELETE IF NOT USED
test_key = keyboard_check_pressed(ord("G"));

//Misc Commands
read_key = keyboard_check_pressed(ord("R"));
grab_key = keyboard_check_pressed(ord("F"));
pause_key = keyboard_check_pressed(vk_escape);

//Get the Axis
xAxis = (right_key - left_key);
yAxis = (down_key - up_key);

//Check for Controller
//UPDATE AFTER ALL SORTED. TOO MUCH WORK OTHERWISE
if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0 , .35);
	xAxis = gamepad_axis_value(0, gp_axislh);
	yAxis = gamepad_axis_value(0, gp_axislv);
	backDash_key = gamepad_button_check_pressed(0, gp_face2);
	bowAttack_key = gamepad_button_check_pressed(0, gp_face1);
	pause_key = gamepad_button_check_pressed(0, gp_start);
}