/// @description Explode
spawner_id.spawned--;

var p = random_range(.8,1.1);
var v = random_range(.8,1.1);
audio_sound_pitch(sfx_chargeEnd,p);
audio_sound_gain(sfx_chargeEnd,v,2);
			
audio_play_sound(sfx_chargeEnd,1,false);
part_particles_create(global.particleSystem,x,y,global.part_em_damage,20);

instance_destroy(self);

