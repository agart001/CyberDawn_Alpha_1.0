

switch(state)
{
	case state.idle: scr_idle_playerState();break;
	case state.run: scr_run_playerState();break;
	case state.jump: scr_jump_playerState();break;
	case state.fall: scr_fall_playerState();break;
	case state.dash: scr_dash_playerState();break;
	case state.shoot: scr_shoot_playerState();break;
	
};  

//if(health<=0){room_goto(rm_death);};

if(hsp>.5||hsp< -.5)
{
	if(legsIndex<6){legsIndex+=.2;}else{legsIndex=0;};
}
else{if(vsp==0){legsIndex=0;};};

if(overheat>0)
{
	
	if(overheat>=maxOverheat-5)
	{
	overheated=true;
	}
	
	if(overheated)
	{
		if(overheat<75){overheated=false;}
		overheat-=.075;
	}
	else{overheat-=.25;};
	
}
else{overheat=0;};


if(vsp==0)
{
	if(abs(legsIndex)=3)
	{
		var p = random_range(.8,1.1);
		var v = random_range(.6,1);
		audio_sound_pitch(sfx_footstepG_1,p);
		audio_sound_gain(sfx_footstepG_1,v,1);
		
		part_particles_create(global.particleSystem,x,y+sprite_get_height(legsSprite),global.part_ground,5);
		audio_play_sound(sfx_footstepG_1,1,false);
	};
	if(abs(legsIndex)=6)
	{
		var p = random_range(.8,1.1);
		var v = random_range(.6,1);
		audio_sound_pitch(sfx_footstepG_2,p);
		audio_sound_gain(sfx_footstepG_2,v,1);
		
		part_particles_create(global.particleSystem,x,y+sprite_get_height(legsSprite),global.part_ground,5);
		audio_play_sound(sfx_footstepG_2,1,false);
	};
}
else
{
	if(abs(legsIndex)=3||abs(legsIndex)=6)
	{
		var p = random_range(.8,1.1);
		var v = random_range(.2,.6);
		audio_sound_pitch(sfx_footstepA,p);
		audio_sound_gain(sfx_footstepA,v,1);
		audio_play_sound(sfx_footstepA,1,false);
	};
};

if(key_dash)
{
	var p = random_range(.8,1.1);
	var v = random_range(.6,.8);
	audio_sound_pitch(sfx_dash,p);
	audio_sound_gain(sfx_dash,v,1);
	audio_play_sound(sfx_dash,1,false);
};

  
if(hasBasic&&hasBeam&&hasBounce&&hasCharge&&hasSpread){hasAllGuns=true;};

gun = playerGun;

if(currentGun!=previousGun)
{
	var p = random_range(.8,1.1);
	var v = random_range(.6,.8);
	audio_sound_pitch(sfx_switch,p);
	audio_sound_gain(sfx_switch,v,audio_sound_length(sfx_switch));
	audio_play_sound(sfx_switch,1,false);
};
previousGun=currentGun;