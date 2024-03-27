var text_col = instance_place(x,y,obj_textCollision);
if(obj_testPlayer.hasBeam!=false){instance_destroy(text_col);instance_destroy(self);};

if(distance_to_object(obj_testPlayer)<interact_distance)
{
	if(obj_testPlayer.hasBeam==false)
	{
		if(obj_testPlayer.key_text){obj_testPlayer.hasBeam=true;};
	}
};