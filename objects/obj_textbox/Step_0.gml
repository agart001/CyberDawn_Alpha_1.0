
if(obj_BC_testPlayer.key_text)
{
	var p = random_range(.9,1);
	var v = random_range(.1,.15);
	audio_sound_pitch(sfx_period,p);
	audio_sound_gain(sfx_period,v,audio_sound_length(sfx_period));
	audio_play_sound(sfx_period,1,false);
	
	if(page+1<array_length(text)){page++;char_count=0;}
	else{instance_destroy();collision.alarm[0]= -1;};
};