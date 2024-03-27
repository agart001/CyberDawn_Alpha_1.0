// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_charge_KD()
{
	if (point_distance(x, y, obj_BC_testPlayer.x, obj_BC_testPlayer.y) > trackDist) {
		stateKD = stateKD.wander;
	}
	
	angleKD = point_direction(x, y, obj_BC_testPlayer.x, obj_BC_testPlayer.y);
	
	xSpeedKD = speedKD * cos(degtorad(angleKD));
	ySpeedKD = speedKD * sin(degtorad(angleKD));
	
	hsp = sign(obj_BC_testPlayer.x - x) * abs(xSpeedKD);
	vsp = sign(obj_BC_testPlayer.y - y) * abs(ySpeedKD);
	//hsp = 0;
	//vsp = 0;
	
	//show_debug_message(xSpeedKD);
	
	image_index=0;
	
	scr_collision_KD();
};