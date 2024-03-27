
switch(stateSD)
{
	case stateSD.wander: scr_wander_SD();break;
	case stateSD.charge: scr_charge_SD();break;
	case stateSD.shoot: scr_shoot_SD();break;
}; 

if(distance_to_object(obj_BC_testPlayer)<obj_HUD.hud_w)
{
	if(abs(image_index)=2||abs(image_index)=4)
	{
		var p = random_range(.8,1.1);
		var v = random_range(.4,.6);
		audio_sound_pitch(sfx_droid_footstep,p);
		audio_sound_gain(sfx_droid_footstep,v,1);
		
		part_particles_create(global.particleSystem,x,y+(sprite_get_height(spr_spiderDroid)/2),global.part_ground,5);
		audio_play_sound(sfx_droid_footstep,5,false);
	};
};

