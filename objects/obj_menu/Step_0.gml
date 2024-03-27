
menu_input=keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);

if(mouse_wheel_up()){menu_input= -1;};
if(mouse_wheel_down()){menu_input=1;};

menu_index+=menu_input
if(menu_index<0){menu_index=buttons-1;};
if(menu_index>buttons-1){menu_index=0;};

if(menu_index!=previous_index)
{
	var p = random_range(.9,1);
	var v = random_range(.1,.15);
	audio_sound_pitch(sfx_select,p);
	audio_sound_gain(sfx_select,v,audio_sound_length(sfx_select));
	audio_play_sound(sfx_select,1,false);
};

previous_index=menu_index;