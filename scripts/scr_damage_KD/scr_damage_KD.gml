// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage_KD()
{
	var damageProj = instance_place(x,y,obj_BC_projectile);
	
	hsp = lengthdir_x(damageProj.knockValue,damageProj.direction);
	vsp = lengthdir_y(damageProj.knockValue,damageProj.direction);
	
	for(var i=0; i< hit; i++)
	{
		if(healthKD-damageProj.damageValue<=0){healthKD=0;}else{healthKD-=damageProj.damageValue;};
		var s =irandom_range(1,4);
		var p = random_range(.6,.8);
		var v = random_range(.6,.8);
		audio_sound_pitch(damage_sound[s],p);
		audio_sound_gain(damage_sound[s],v,2);
			
		audio_play_sound(damage_sound[s],1,false);
		part_particles_create(global.particleSystem,damageProj.x,damageProj.y,global.part_em_damage,20);
	};
	
	if(hit!=0){flash=1;alarm[0]=damageProj.knockTime;hit--;};
	
	instance_destroy(damageProj);
}