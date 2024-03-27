// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_jump_playerState()
{
	image_index=2;
	legsIndex=6; 
	
	scr_getInputs();
	if(key_dash){state=state.dash; alarm[4]=dashLength;};
	if(sign(vsp)>0){state=state.fall;};
	if(key_shoot){state=state.shoot;};
	
	hsp=lerp(hsp,input_magnitude*wlkSP,obj_world.frictionA);
	vsp += obj_world.grv;
	
	scr_playerCollision();
}