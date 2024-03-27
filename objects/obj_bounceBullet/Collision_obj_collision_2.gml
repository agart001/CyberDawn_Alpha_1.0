move_bounce_all(true);
bounces+=1;
damageValue+=2;
speed+=5;
direction+=random_range(-2,2);

var p = random_range(.8,1.1);
var v = random_range(.4,.6);
audio_sound_pitch(sfx_bounceEnd,p);
audio_sound_gain(sfx_bounceEnd,v,2);
			
audio_play_sound(sfx_bounceEnd,1,false);
part_particles_create(global.particleSystem,x,y,global.part_bulBounce,5);