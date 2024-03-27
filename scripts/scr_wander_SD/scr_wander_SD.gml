// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_wander_SD()
{
	vsp+=obj_world.grv;

	if(point_distance(x,y,obj_BC_testPlayer.x,y)<=trackDist){stateSD = stateSD.charge;};

	if(disTrav == 100) 
	{
		if(hsp > 0){hsp = -speedSD;spriteFlip= -1;}else{hsp = speedSD;spriteFlip= 1;} 
		disTrav=0;
	}

	++disTrav;
	image_index+=.25;
	scr_collision_SD();
}