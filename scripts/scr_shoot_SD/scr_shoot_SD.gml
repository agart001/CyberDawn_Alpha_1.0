// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shoot_SD()
{
	image_index=0;
	
	hsp=0;
	vsp+=obj_world.grv;
	
	var cal_shotDirection = point_direction(x,y,obj_BC_testPlayer.x,obj_BC_testPlayer.y);
	switch(round(cal_shotDirection/180))
	{
		case 0: 
			cal_shotDirection=0;
			shot_x=x+(sprite_get_width(spr_spiderDroid)/2);
			shot_y=y-(sprite_get_height(spr_spiderDroid)*.45);
			spriteFlip= 1;
		break;
		case 1: 
			cal_shotDirection=180;
			shot_x=x-(sprite_get_width(spr_spiderDroid)/2);
			shot_y=y-(sprite_get_height(spr_spiderDroid)*.45);
			spriteFlip= -1;
		break;
		case 2: 
			cal_shotDirection=0;
			shot_x=x+(sprite_get_width(spr_spiderDroid)/2);
			shot_y=y-(sprite_get_height(spr_spiderDroid)*.45);
			spriteFlip= 1;
		break;
	};
	shotDirection=cal_shotDirection;
	instance_create_layer(shot_x,shot_y,"Projectiles",obj_spiderBullet);
	part_particles_create(global.particleSystem,shot_x,shot_y,global.part_em_attack,5);
	stateSD=stateSD.charge;
	
	scr_collision_SD();
	
	//scr_collision_SD();
};