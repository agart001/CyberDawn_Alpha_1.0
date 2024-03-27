// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_run_playerState()
{
	image_index=1;
	
	scr_getInputs();
	if(input_magnitude==0){state=state.idle;};
	if(key_dash){state=state.dash; alarm[4]=dashLength;};
	if(key_jump){state=state.jump;};
	if(sign(vsp)>0){state=state.fall;};
	if(key_shoot){state=state.shoot;};
	
	hsp=lerp(hsp,input_magnitude*wlkSP,obj_world.frictionG);
	vsp += obj_world.grv;

	scr_playerCollision();
}