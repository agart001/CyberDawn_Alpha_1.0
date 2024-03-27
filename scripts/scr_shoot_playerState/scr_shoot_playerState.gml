// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shoot_playerState()
{
	image_index = 5;
	
	scr_getInputs();
	if(key_dash){state=state.dash; alarm[4]=dashLength;};
	if(vsp!=0){state=state.fall;};
	

	if(vsp==0){hsp=lerp(hsp,input_magnitude*wlkSP,obj_world.frictionG);}else{hsp=lerp(hsp,0,obj_world.frictionA);}; 
	vsp += obj_world.grv;

	
	scr_playerCollision();     
	
	if(shotReady&&key_shoot&&overheated)
	{
		var p = random_range(.8,1.1);
		var v = random_range(.6,.8);
		audio_sound_pitch(sfx_trigger,p);
		audio_sound_gain(sfx_trigger,v,1);
		audio_play_sound(sfx_trigger,1,false);
		shotReady=false;
		alarm[1]=45;
	};
	
	switch(gun)
	{ 
		case gun.basic: 
			if(shotReady&&key_shoot&&!overheated&&overheat+10<maxOverheat)
			{
				overheat += 10;
				instance_create_layer(muzzle_x,muzzle_y,"Projectiles",obj_basicBullet);
			
				var p = random_range(.8,1.1);
				var v = random_range(.6,.8);
				audio_sound_pitch(sfx_basic,p);
				audio_sound_gain(sfx_basic,v,1);
			
				audio_play_sound(sfx_basic,1,false);
				part_particles_create(global.particleSystem,muzzle_x,muzzle_y,global.part_mzBasic,10);
			
				shotReady=false;
				alarm[1]=10;
			}
		break;
		case gun.spread: 
	 		if(shotReady&&key_shoot&&!overheated&&overheat+30<maxOverheat)
			{
				overheat += 30;
				for(var pellets=0; pellets<6;pellets+=1){instance_create_layer(muzzle_x,muzzle_y,"Projectiles",obj_spreadBullet);};
			
				var p = random_range(.4,.5);
				var v = random_range(.8,1.1);
				audio_sound_pitch(sfx_spread,p);
				audio_sound_gain(sfx_spread,v,1);
			
				audio_play_sound(sfx_spread,1,false);
				part_particles_create(global.particleSystem,muzzle_x,muzzle_y,global.part_mzSpread,10);
			
				shotReady=false;
				alarm[1]=20;
			};
		break;  
		case gun.charge:
			if(shotReady&&key_shoot&&!overheated&&overheat+55<maxOverheat)
			{
				overheat += 55;
				instance_create_layer(muzzle_x,muzzle_y,"Projectiles",obj_chargeBullet);
			
				var p = random_range(.8,1.1);
				var v = random_range(.8,1.1);
				audio_sound_pitch(sfx_charge,p);
				audio_sound_gain(sfx_charge,v,1);
			
				audio_play_sound(sfx_charge,1,false);
				part_particles_create(global.particleSystem,muzzle_x,muzzle_y,global.part_mzCharge,10);
			
				shotReady=false;
				alarm[1]=75;
			};
		break;    
	 	case gun.beam:
			if(shotReady&&key_shoot&&!overheated)
			{
				if(!instance_exists(obj_laserBeam))
				{
					instance_create_layer(muzzle_x,muzzle_y,"Projectiles",obj_laserBeam);
				};
				var p = random_range(.8,1.1);
				var v = random_range(.1,.2);
				audio_sound_pitch(sfx_beam,p);
				audio_sound_gain(sfx_beam,v,2);
			
				audio_play_sound(sfx_beam,1,false);
				part_particles_create(global.particleSystem,muzzle_x,muzzle_y,global.part_mzBeam,10);
			};
		break;
		case gun.bounce:
			if(shotReady&&key_shoot&&!overheated&&overheat+20<maxOverheat)
			{
				overheat += 20;
				instance_create_layer(muzzle_x,muzzle_y,"Projectiles",obj_bounceBullet);
			
				var p = random_range(.8,1.1);
				var v = random_range(.8,1.1);
				audio_sound_pitch(sfx_bounce,p);
				audio_sound_gain(sfx_bounce,v,2);
			
				audio_play_sound(sfx_bounce,1,false);
				part_particles_create(global.particleSystem,muzzle_x,muzzle_y,global.part_mzBounce,10);
			
				shotReady=false;
				alarm[1]=10;
		};
		break;
	};     
	           
}                                            