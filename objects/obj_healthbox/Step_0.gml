if(distance_to_object(obj_testPlayer)<interact_distance)
{
	var health_textCol = instance_place(x,y,obj_textCollision);
	if(health_textCol.col_textbox!=noone)
	{
		if(obj_testPlayer.key_text)
		{
			var p = random_range(.8,1.1);
			var v = random_range(.8,1);
			audio_sound_pitch(sfx_health,p);
			audio_sound_gain(sfx_health,v,1);
			audio_play_sound(sfx_health,1,false);
			health=obj_testPlayer.maxHealth;
		};
	};
};