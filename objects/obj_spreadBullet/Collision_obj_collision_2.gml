var p = random_range(.2,.4);
var v = random_range(.1,.2);
audio_sound_pitch(sfx_basicEnd,p);
audio_sound_gain(sfx_basicEnd,v,2);
			
audio_play_sound(sfx_basicEnd,1,false);
part_particles_create(global.particleSystem,x,y,global.part_bulSpread,5);
instance_destroy(self);