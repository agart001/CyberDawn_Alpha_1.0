// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerCollision()
{
	//Horizontal Collision
	if (place_meeting(x + hsp, y, obj_collision))
	{
	while (!place_meeting(x + sign(hsp), y, obj_collision))
	{
		x += sign(hsp);
	}
	hsp = 0;	
	}

	//Vertical Collision
	if (place_meeting(x, y + vsp, obj_collision))
	{
	while (!place_meeting(x , y+ sign(vsp), obj_collision))
	{
		y += sign(vsp);
	}
	vsp = 0;
	}
	
	y += vsp;
	x += hsp;
	
	
	if(place_meeting(x,y,obj_BC_damageCol))
	{
		input_magnitude=0;
		++hit;
		scr_damage_playerState();
	};
	
	#region Level Switch
	
	if(place_meeting(x,y,obj_BC_switch))
	{
		var p = random_range(.8,1);
		var v = random_range(.4,.6);
		audio_sound_pitch(sfx_door,p);
		audio_sound_gain(sfx_door,v,audio_sound_length(sfx_door));
		audio_play_sound(sfx_door,1,false);
	};
	
	if(place_meeting(x,y,obj_levelStart))
	{
		var previousLevel=room_get_name(room);
		switch(previousLevel)
		{
			case "rm_2": obj_world.prevLevel="rm_1";obj_world.nextLevel="rm_2";break;
			case "rm_3": obj_world.prevLevel="rm_2";obj_world.nextLevel="rm_3";break;
			case "rm_4": obj_world.prevLevel="rm_3";break;
		};
		room_goto(rm_safe);
		alarm[7]=2;
	};
	
	if(place_meeting(x,y,obj_levelEnd))
	{
		var previousLevel=room_get_name(room);
		switch(previousLevel)
		{
			case "rm_1": obj_world.prevLevel="rm_1";obj_world.nextLevel="rm_2";break;
			case "rm_2": obj_world.prevLevel="rm_2";obj_world.nextLevel="rm_3";break;
			case "rm_3": obj_world.prevLevel="rm_3";obj_world.nextLevel="rm_4";break;
			//case "rm_4": /*obj_world.levelFourComp=true;*/break;
		};
		room_goto(rm_safe);
		alarm[6]=2;
	};
	
	if(place_meeting(x,y,obj_levelPrevious))
	{
		if(obj_world.prevLevel=="rm_1"){room_goto(rm_1)};
		if(obj_world.prevLevel=="rm_2"){room_goto(rm_2)};
		if(obj_world.prevLevel=="rm_3"){room_goto(rm_3)};
		alarm[11]=2;
	};
	if(place_meeting(x,y,obj_levelNext))
	{
		if(obj_world.nextLevel=="rm_2"){room_goto(rm_2);};
		if(obj_world.nextLevel=="rm_3"){room_goto(rm_3);};
		if(obj_world.nextLevel=="rm_4"){room_goto(rm_4);};
		alarm[10]=2;
	};
	
	#endregion
}