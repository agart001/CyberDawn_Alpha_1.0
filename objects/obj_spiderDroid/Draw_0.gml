event_inherited();
draw_sprite_ext(spr_spiderDroid,image_index,x,y,spriteFlip,1,0,image_blend,image_alpha);

if(shader_current()!=-1){shader_reset();};

//draw_healthbar(x-(sprite_width/2),y-sprite_height,x+sprite_width,y-(sprite_height/2),healthSD,c_white,c_yellow,c_green,0,false,false);