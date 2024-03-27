// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_charge_SD()
{
	image_index=0;
	
	if(point_distance(x,y,obj_BC_testPlayer.x,y)>trackDist){stateSD=stateSD.wander;charge=0;}else
	{
		var cal_shotDirection = point_direction(x,y,obj_BC_testPlayer.x,obj_BC_testPlayer.y);
		switch(round(cal_shotDirection/180))
		{
		case 0: spriteFlip= 1;break;
		case 1: spriteFlip= -1;break;
		case 2: spriteFlip= 1;break;
		};
		charge++;
	};
	if(charge>45){stateSD=stateSD.shoot; charge=0;};
	
	
	hsp=0;
	vsp+=obj_world.grv;
	scr_collision_SD();

};