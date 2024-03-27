// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision_SD()
{
	if(place_meeting(x,y,obj_BC_projectile))
	{
		++hit;
		scr_damage_SD();
	};
	//Horizontal Collision
	if (place_meeting(x + hsp, y, obj_collision))
	{
	while (!place_meeting(x + sign(hsp), y, obj_collision))
	{
		x += sign(hsp);
	}
	if(hsp>0){hsp= -10}else{hsp= 10};
	//hsp = 0;
	}

	//Vertical Collision
	if (place_meeting(x, y + vsp, obj_collision))
	{
	while (!place_meeting(x , y+ sign(vsp), obj_collision))
	{
		y += sign(vsp);
	}
	vsp = 0;	
	}
	
	y += vsp;
	x += hsp;
	
}