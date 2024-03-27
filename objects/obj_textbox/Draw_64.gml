var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var box_x = 0;
var box_y = gui_h/2;


draw_sprite_stretched_ext(
	spr_textbox,
	image_index,
	box_x,
	box_y,
	gui_w,
	gui_h/2,
	c_white,
	.75
	);
draw_set_font(fnt_text);
draw_set_color(c_white);

if(char_count<string_length(text[page]))
{
	char_count++;
	var p = random_range(.9,1);
	var v = random_range(.2,.3);
	audio_sound_pitch(sfx_type,p);
	audio_sound_gain(sfx_type,v,audio_sound_length(sfx_type));
	audio_play_sound(sfx_type,1,false);
};
text_part = string_copy(text[page],1,char_count);
draw_text_ext(
	box_x+(gui_w*.15),
	box_y+(gui_h*.05),
	text_part, 
	string_h,
	gui_w
	);

draw_text(gui_w*.8,gui_h*.9,text_continue)