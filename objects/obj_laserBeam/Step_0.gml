 
direction = obj_BC_testPlayer.aim_direction


x=obj_BC_testPlayer.muzzle_x;
y=obj_BC_testPlayer.muzzle_y;
 
var maxLength = 2000;
for(var laserPoint = 0;laserPoint < maxLength;laserPoint++)
{
	xEnd=x+lengthdir_x(laserPoint,direction);
	yEnd=y+lengthdir_y(laserPoint,direction);
	laserLength = laserPoint;
	if(collision_point(xEnd,yEnd,obj_collision,0,0))
	{
		var p = random_range(.8,1.1);
		var v = random_range(.1,.2);
		audio_sound_pitch(sfx_beamEnd,p);
		audio_sound_gain(sfx_beamEnd,v,1);
		
		audio_play_sound(sfx_beamEnd,1,false);
		part_particles_create(global.particleSystem,xEnd,yEnd,global.part_bulBeam,10);
		
		break;
	};
	if(collision_point(xEnd,yEnd,obj_BC_droid,0,0))
	{
		var p = random_range(.8,1.1);
		var v = random_range(.05,.1);
		audio_sound_pitch(sfx_beamEnd,p);
		audio_sound_gain(sfx_beamEnd,v,1);
		
		audio_play_sound(sfx_beamEnd,1,false);
		part_particles_create(global.particleSystem,xEnd,yEnd,global.part_bulBeam,10);
		break;
	}; 
};

if(instance_exists(obj_spiderDroid))
{
	var sd_list = ds_list_create();
	var sd_hits = collision_line_list(x,y,xEnd,yEnd,obj_spiderDroid,0,0,sd_list,0);
	if(sd_hits>0)
	{
		for(var i =0;i<sd_hits;i++)
		{
			if(sd_list[| i].healthSD>0)
			{
				sd_list[| i].healthSD-=damageValue;
			}
			else
			{
				var sd_spawn = sd_list[| i].spawner_id; 
				sd_spawn.spawned--;
				instance_destroy(sd_list[| i]); 
				score+=100;
			};
			var s =irandom_range(1,4);
			var p = random_range(.6,.8);
			var v = random_range(.1,.2);
			audio_sound_pitch(sd_list[| i].damage_sound[s],p);
			audio_sound_gain(sd_list[| i].damage_sound[s],v,audio_sound_length(sd_list[| i].damage_sound[s]));
			audio_play_sound(sd_list[| i].damage_sound[s],1,false);
		};
	};
	ds_list_destroy(sd_list);
};

if(instance_exists(obj_kazeDroid))
{
	var kd_list = ds_list_create();
	var kd_hits = collision_line_list(x,y,xEnd,yEnd,obj_kazeDroid,0,0,kd_list,0);
	if(kd_hits>0)
	{
		for(var i =0;i<kd_hits;i++)
		{
			if(kd_list[| i].healthKD>0)
			{
				kd_list[| i].healthKD-=damageValue;
			}
			else
			{
				var kd_spawn = kd_list[| i].spawner_id; 
				kd_spawn.spawned--;
				instance_destroy(kd_list[| i]); 
				score+=100;
			};
			var s =irandom_range(1,4);
			var p = random_range(.6,.8);
			var v = random_range(.1,.2);
			audio_sound_pitch(kd_list[| i].damage_sound[s],p);
			audio_sound_gain(kd_list[| i].damage_sound[s],v,audio_sound_length(kd_list[| i].damage_sound[s]));
			audio_play_sound(kd_list[| i].damage_sound[s],1,false);
		};
	};
	ds_list_destroy(kd_list);
};

if(obj_BC_testPlayer.key_shoot==false||obj_BC_testPlayer.overheated==true){instance_destroy(self);}else{obj_testPlayer.overheat+=1.15;}