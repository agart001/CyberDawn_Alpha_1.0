// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage_playerState()
{
	if(health<=0){instance_destroy(obj_BC_controller);instance_destroy(self);room_goto(rm_death);};
	
	var damageCol = instance_place(x,y,obj_BC_damageCol);
	
	var col_dir = point_direction(damageCol.x,damageCol.y,x,y);
	
	hsp=lerp(lengthdir_x(damageCol.knockValue,col_dir),hsp,obj_world.frictionA);
	vsp=lerp(lengthdir_y(damageCol.knockValue,col_dir),vsp,obj_world.frictionA);
	//hsp = lengthdir_x(damageCol.knockValue,col_dir);
	//vsp = lengthdir_y(damageCol.knockValue,col_dir);
	
	for(var i=0; i< hit; i++)
	{
		health-=damageCol.damageValue;
		var p = random_range(.6,.8);
		var v = random_range(.4,.6);
		audio_sound_pitch(sfx_oof,p);
		audio_sound_gain(sfx_oof,v,2);
			
		audio_play_sound(sfx_oof,1,false);
	};
	
	if(hit!=0){flash=1;alarm[2]=damageCol.knockTime;hit--;};
};