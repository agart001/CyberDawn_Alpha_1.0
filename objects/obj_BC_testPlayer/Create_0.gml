/// @description Insert description here
// You can write your code in this editor
enum state
{
	idle,
	run,
	jump,
	fall,
	dash,
	shoot,
	damage
};

enum gun
{
	basic,
	bounce,
	charge,
	spread,
	beam
};

currentLevel = "";
score = 0;


playerSprite = spr_testPlayer;
legsSprite = spr_legs;
legsIndex = 0;
torsoSprite = spr_torso;
torsoIndex = 0;

flash = 0;
dflash = shader_get_uniform(damageShader,"flash");

image_alpha = 1;
image_speed = 0;
image_index = 0;

hsp = 0;
vsp = 0;
jmpHT = -25;
wlkSP = 15;

health = 100;
maxHealth = 100;
hit = 0;
knock = 0;

currentGun="BASIC";
previousGun=currentGun;
playerGun = gun.basic;

hasAllGuns=false;

hasBasic = true;
hasSpread = true;
hasCharge = true;
hasBeam = true;
hasBounce = true;

overheat = 0;
maxOverheat = 100;
overheated = false;
shotReady = true;
charge = 0;
muzzle_x = 0;
muzzle_y = 0;


dashSpeed = 2.25;
dashReady = true;
dashCoolDown = 1000000;
dashLength = 25;

state = state.idle;
gun = playerGun;