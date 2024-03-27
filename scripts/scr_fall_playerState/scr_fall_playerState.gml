// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fall_playerState()
{
	image_index=3;
	legsIndex=1; 
	
	scr_getInputs();
	if(key_dash){state=state.dash; alarm[4]=dashLength;};
	if(vsp==0)
	{
		var p = random_range(.8,1.1);
		var v = random_range(.8,1.1);
		audio_sound_pitch(sfx_landing,p);
		audio_sound_gain(sfx_landing,v,2);
		
		part_particles_create(global.particleSystem,x,y+sprite_get_height(legsSprite),global.part_ground,10);
		audio_play_sound(sfx_landing,1,false);
		state=state.idle;
	};
	if(key_shoot){state=state.shoot;};
	
	hsp=lerp(hsp,input_magnitude*wlkSP,obj_world.frictionA);
	vsp += obj_world.grv;
	
	scr_playerCollision();
}