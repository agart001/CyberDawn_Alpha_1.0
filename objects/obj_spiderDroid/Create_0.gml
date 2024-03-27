event_inherited();

enum stateSD
{
	wander,
	charge,
	shoot,
	damage
};

healthSD = 10;
speedSD = 5;

vsp = 0;
hsp = speedSD;
spriteFlip = 1;

shot_x = 0;
shot_y = 0;
shotDirection = 0;
charge = 0;

trackDist = 500;
disTrav = 0;

damageValue = 12;
knockValue = 30;
knockTime = 2;

stateSD = stateSD.wander;
