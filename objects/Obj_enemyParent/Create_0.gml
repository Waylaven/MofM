/// Create enemy attributes
event_inherited();
image_speed = .1;
hp = 3;
spd = .5;
state = Scr_enemyIdleState;
alarm[0] = room_speed * irandom_range(2 , 5);
sight = 256;
targetX = 0;
targetY = 0;
damage = 1;
knockback = 50;