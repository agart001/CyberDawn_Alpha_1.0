// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dash_playerState()
{ 
	//dashReady = false;
	image_index=4;
	
	scr_getInputs();
	if(key_dash){state=state.idle;};
	if(input_magnitude==0){state=state.idle;};
	
	if(image_alpha>.15){image_alpha-=.05;};
	
	if(vsp==0){hsp=lerp(hsp,(input_magnitude*wlkSP)*dashSpeed,obj_world.frictionG/.25);}else{hsp=lerp(hsp,(input_magnitude*wlkSP)*dashSpeed,obj_world.frictionA/.75);};
	vsp += obj_world.grv;
	
	scr_playerCollision();
}