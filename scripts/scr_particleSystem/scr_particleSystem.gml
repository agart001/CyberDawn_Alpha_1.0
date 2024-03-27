//scr_particleSystem()

#region Particle Types

#region Muzzles
//Muzzle Basic
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_yellow,c_white,c_dkgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,.05,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.05,270);

global.part_mzBasic= P;
//Muzzle Bounce
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_lime,c_white,c_dkgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,.05,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.05,270);

global.part_mzBounce= P;
//Muzzle Spread
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_purple,c_white,c_dkgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,.05,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.05,270);

global.part_mzSpread= P;
//Muzzle Charge
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_orange,c_white,c_dkgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,.05,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.05,270);

global.part_mzCharge= P;
//Muzzle Beam
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_aqua,c_white,c_dkgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,.05,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.05,270);

global.part_mzBeam= P;
#endregion 

#region Bullets
//Basic Bullet
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_yellow,c_white,c_dkgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,.05,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.05,270);

global.part_bulBasic= P;
//Bounce Bullet
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_lime,c_white,c_dkgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,.05,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.05,270);

global.part_bulBounce= P;
//Spread Bullet
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_purple,c_white,c_dkgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,.05,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.05,270);

global.part_bulSpread= P;
//Charge Bullet
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_orange,c_white,c_dkgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,.05,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.05,270);

global.part_bulCharge= P;
//Beam
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_aqua,c_white,c_dkgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,.05,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.05,270);

global.part_bulBeam= P;
#endregion

#region Player Effects
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color2(P,c_dkgray,c_ltgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,2,4,-.015,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.6,270);

global.part_ground= P;

#endregion

#region Enemy Effects
//Damage
var P = part_type_create();

part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_black,c_dkgray,c_ltgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,2,4,-.015,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.6,270);

global.part_em_damage= P;
//Attack
part_type_shape(P,pt_shape_square);
part_type_life(P,20,40);

part_type_alpha2(P,.9,0);
part_type_color3(P,c_aqua,c_black,c_ltgray);
part_type_size(P,.2,.4,-.025,.015);

part_type_speed(P,4,6,-.015,0);
part_type_direction(P,0,360,0,0);
part_type_gravity(P,.15,270);

global.part_em_attack= P;
#endregion

#endregion
