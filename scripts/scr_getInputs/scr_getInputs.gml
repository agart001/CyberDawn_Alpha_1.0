// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_getInputs()
{
	//inputs
	key_right=keyboard_check(vk_right)||keyboard_check(ord("D"));
	key_left=keyboard_check(vk_left)||keyboard_check(ord("A"));
	key_jump=keyboard_check_pressed(vk_space);
	key_dash=keyboard_check_pressed(vk_shift)||mouse_check_button_pressed(mb_right);
	key_text=keyboard_check_pressed(ord("E"));
	
	key_shoot=mouse_check_button(mb_left);
	key_1=keyboard_check(ord("1"));
	key_2=keyboard_check(ord("2"));
	key_3=keyboard_check(ord("3"));
	key_4=keyboard_check(ord("4"));
	key_5=keyboard_check(ord("5"));
	
	
	#region Mouse Inputs
	aim_flip=((mouse_x>x)*2)-1;
	switch(round(point_direction(x,y,mouse_x,mouse_y)/24))
	{
		case 0: 
			aim_direction=0; 
			torsoIndex=2;
			muzzle_x=x+(sprite_get_width(torsoSprite)/1.5); 
			muzzle_y=y-(sprite_get_height(torsoSprite)/2.5);
		break;
		case 1: 
			aim_direction=45;
			torsoIndex=1; 
			muzzle_x=x+(sprite_get_width(torsoSprite)/1.75); 
			muzzle_y=y-(sprite_get_height(torsoSprite)/1.25);
		break;
		case 2: 
			aim_direction=45;
			torsoIndex=1; 
			muzzle_x=x+(sprite_get_width(torsoSprite)/1.75); 
			muzzle_y=y-(sprite_get_height(torsoSprite)/1.25);
		break;
		case 3: 
			aim_direction=90;
			torsoIndex=0;
			muzzle_x=x; 
			muzzle_y=y-(sprite_get_height(torsoSprite)/1.15);
		break;
		case 4: 
			aim_direction=90;
			torsoIndex=0; 
			muzzle_x=x; 
			muzzle_y=y-(sprite_get_height(torsoSprite)/1.15);
		break;
		case 5: 
			aim_direction=135;
			torsoIndex=1;
			muzzle_x=x-(sprite_get_width(torsoSprite)/1.75); 
			muzzle_y=y-(sprite_get_height(torsoSprite)/1.25);
		break;
		case 6: 
			aim_direction=135;
			torsoIndex=1;
			muzzle_x=x-(sprite_get_width(torsoSprite)/1.75); 
			muzzle_y=y-(sprite_get_height(torsoSprite)/1.25);
		break;
		case 7: 
			aim_direction=180;
			torsoIndex=2;
			muzzle_x=x-(sprite_get_width(torsoSprite)/1.5); 
			muzzle_y=y-(sprite_get_height(torsoSprite)/2.5);
		break;
		case 8: 
			aim_direction=180;
			torsoIndex=2;
			muzzle_x=x-(sprite_get_width(torsoSprite)/1.5); 
			muzzle_y=y-(sprite_get_height(torsoSprite)/2.5);
		break;
		case 9: 
			aim_direction=225;
			torsoIndex=3;
			muzzle_x=x-(sprite_get_width(torsoSprite)/1.75); 
			muzzle_y=y;
		break;
		case 10: 
			aim_direction=225;
			torsoIndex=3; 
			muzzle_x=x-(sprite_get_width(torsoSprite)/1.75); 
			muzzle_y=y;
		break;
		case 11: 
			aim_direction=270;
			torsoIndex=4;
			muzzle_x=x; 
			muzzle_y=y+(sprite_get_height(torsoSprite)/2.75);
		break;
		case 12: 
			aim_direction=270;
			torsoIndex=4;
			muzzle_x=x; 
			muzzle_y=y+(sprite_get_height(torsoSprite)/2.75);
		break;
		case 13: 
			aim_direction=315;
			torsoIndex=3;
			muzzle_x=x+(sprite_get_width(torsoSprite)/1.75); 
			muzzle_y=y;
		break;
		case 14: 
			aim_direction=315;
			torsoIndex=3;
			muzzle_x=x+(sprite_get_width(torsoSprite)/1.75); 
			muzzle_y=y;
		break;
		case 15:
			aim_direction=0;
			torsoIndex=2;
			muzzle_x=x+(sprite_get_width(torsoSprite)/1.5); 
			muzzle_y=y-(sprite_get_height(torsoSprite)/2.5);
		break;
	};
	#endregion
	
	
	input_magnitude = (key_right - key_left);
	
	if(state==state.jump||state==state.fall){key_jump=false;};
	if(key_jump&&place_meeting(x,y+1,obj_collision))
	{
		vsp=jmpHT;
		
		var p = random_range(.8,1.1);
		var v = random_range(.8,1.1);
		audio_sound_pitch(sfx_jump,p);
		audio_sound_gain(sfx_jump,v,2);
		audio_play_sound(sfx_jump,1,false);
	};
	
	#region Gun Switch
	if(key_1&&hasBasic)
	{
		playerGun=gun.basic;
		currentGun="BASIC";
	};
	
	if(key_2&&hasSpread)
	{
		playerGun=gun.spread;
		currentGun="SPREAD";
	};
	
	if(key_3&&hasCharge)
	{
		playerGun=gun.charge;
		currentGun="CHARGE";
	};
	
	if(key_4&&hasBeam)
	{
		playerGun=gun.beam;
		currentGun="BEAM";
	};
	
	if(key_5&&hasBounce)
	{
		playerGun=gun.bounce;
		currentGun="BOUNCE";
		
	};
	
	#endregion
	
	
};