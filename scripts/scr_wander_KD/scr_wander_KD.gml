// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_wander_KD()
{

	if (point_distance(x, y, obj_BC_testPlayer.x, obj_BC_testPlayer.y) <= trackDist) {
		stateKD = stateKD.charge;
	}

	if (disTrav == 50){
		if(hsp > 0){
			hsp = -speedKD;
			spriteFlip = -1;
		}
		else {
			hsp = speedKD;
			spriteFlip = 1;
		} 
		disTrav = 0;
	}
	
	vsp = 1.5 * sin(disTrav * (4 * pi / 50));
	
	//show_debug_message(hsp);
	
	++disTrav;
	if(image_index<8){image_index+=.2;}else{image_index=0;};
	scr_collision_KD();
}