
var overlay_w = sprite_get_width(spr_overlay);
var overlay_h = sprite_get_height(spr_overlay);

var overlay_x = overlay_w*.4;
var overlay_y = overlay_h*.5;



draw_sprite_ext(spr_overlay_back,0,overlay_x,overlay_y,.75,.75,0,c_white,1);

draw_sprite_ext(spr_overlay_guns,guns_index,overlay_x-(overlay_w*.2475),overlay_y,.75,.75,0,c_white,1);

draw_sprite_ext(spr_overlay_levelPrev,prevLevel_index,overlay_x-(overlay_w*.11),overlay_y-(overlay_h*.3),.7,.75,0,c_white,1);
draw_sprite_ext(spr_overlay_levelNext,nextLevel_index,overlay_x+(overlay_w*.01),overlay_y-(overlay_h*.3),.7,.75,0,c_white,1);

draw_sprite_stretched(spr_health,0,overlay_x-(overlay_w*.13),overlay_y-(overlay_h*.2),(health/obj_BC_testPlayer.maxHealth)*(overlay_w*.4),overlay_h*.15);
draw_sprite_stretched(spr_overheat,0,overlay_x-(overlay_w*.13),overlay_y+(overlay_h*.15),(obj_BC_testPlayer.overheat/obj_BC_testPlayer.maxOverheat)*(overlay_w*.47),overlay_h*.15);


draw_sprite_ext(spr_overlay,0,overlay_x,overlay_y,.75,.75,0,c_white,1);




