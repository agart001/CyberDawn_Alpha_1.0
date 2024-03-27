var p = random_range(.8,1.1);
var v = random_range(.4,.6);
audio_sound_pitch(sfx_basicEnd,p);
audio_sound_gain(sfx_basicEnd,v,2);
			
audio_play_sound(sfx_basicEnd,1,false);
part_particles_create(global.particleSystem,x,y,global.part_bulBasic,10);
instance_destroy(self);