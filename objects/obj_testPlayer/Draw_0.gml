
if (flash != 0)
{
	shader_set(damageShader);
	shader_set_uniform_f(dflash,flash);
};

//draw_sprite_ext(playerSprite,image_index,x,y,aim_flip,1,0,image_blend,image_alpha);
draw_sprite_ext(legsSprite,legsIndex,x,y+32,aim_flip,1,0,image_blend,image_alpha);
draw_sprite_ext(torsoSprite,torsoIndex,x+(6*aim_flip),y-22,aim_flip,1,0,image_blend,image_alpha);
draw_circle(mouse_x,mouse_y,20,true);


if(shader_current()!=-1){shader_reset();};

