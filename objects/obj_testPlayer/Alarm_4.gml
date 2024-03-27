/// @descriptionn Dash Stop
state=state.idle;
image_alpha = 1;

var p = random_range(.8,1.1);
var v = random_range(.2,.3);
audio_sound_pitch(sfx_dashEnd,p);
audio_sound_gain(sfx_dashEnd,v,1);
audio_play_sound(sfx_dashEnd,1,false);
