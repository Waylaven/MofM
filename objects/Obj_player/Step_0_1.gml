/// All player changes over time polled 60 times a second.
//By setting hp like this, it can be conserved between events and room transitions due to 
//the player stats and flags object being placed in the corner of
//every room
hp = Obj_playerStatsandFlags.hp;
event_inherited();
Scr_getInput();
script_execute(state);
grabFlag = false;