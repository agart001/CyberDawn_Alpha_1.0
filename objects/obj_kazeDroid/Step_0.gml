
switch(stateKD)
{
	case stateKD.wander: scr_wander_KD();break;
	case stateKD.charge: scr_charge_KD();break;
};

if(distance_to_object(obj_BC_testPlayer)<obj_HUD.hud_w)
{
	if(abs(image_index)=2||abs(image_index)=4||abs(image_index)=6||abs(image_index)=8)
	{
		var p = random_range(.4,.6);
		var v = random_range(.1,.15);
		audio_sound_pitch(sfx_droid_hover,p);
		audio_sound_gain(sfx_droid_hover,v,1);
		
		audio_play_sound(sfx_droid_hover,5,false);
	};
};

	