// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision_KD()
{
	if(instance_place(x,y,obj_BC_testPlayer)){alarm[1]=2;};
	
	if(place_meeting(x,y,obj_BC_projectile))
	{
		++hit;
		scr_damage_KD();
	};
	//Horizontal Collision
	if (place_meeting(x + hsp, y, obj_collision))
	{
		while (!place_meeting(x + sign(hsp), y, obj_collision))
		{
			x += sign(hsp);
		}
		if (hsp > 0) {
			hsp = -5;
		}
		else {
			hsp = 5;
		}
	//hsp = 0;
	}

	//Vertical Collision
	if (place_meeting(x, y + vsp, obj_collision))
	{
		while (!place_meeting(x , y + sign(vsp), obj_collision))
		{
			y += sign(vsp);
		}
		vsp = 0;	
	}
	
	
	x += hsp; 
	y += vsp;
	
	
	//if(input_magnitude==0)
	//{
	//	//hsp -= obj_world.frictionConst;
	//	if(hsp == 0)
	//	{
	//		state = state.idle;
	//		exit;
	//	};
	//	hsp -= obj_world.frictionConst;
	//};
}