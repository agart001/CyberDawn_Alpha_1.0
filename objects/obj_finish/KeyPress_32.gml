var p = random_range(.6,.8);
var v = random_range(.1,.15);
audio_sound_pitch(sfx_period,p);
audio_sound_gain(sfx_period,v,audio_sound_length(sfx_period));
audio_play_sound(sfx_period,1,false);

switch(menu_index)
{
	case 0: room_goto(rm_mainMenu);break;
	case 1: game_end();break;
};