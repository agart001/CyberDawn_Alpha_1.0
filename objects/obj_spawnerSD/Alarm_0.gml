if(distance_to_object(obj_BC_testPlayer)<=player_distance)
{
	if(spawned<maxSpawn)
	{
		spawn_x = irandom_range(x-spawnDistance,x+spawnDistance);
		spawn_y = irandom_range(
				y-sprite_get_height(spr_spiderDroid),
				y-(sprite_get_height(spr_spiderDroid)*1.5)
				);
		if(!collision_rectangle(
			spawn_x-(sprite_get_width(spr_spiderDroid)*.5),
			spawn_y-(sprite_get_height(spr_spiderDroid)*.5),
			spawn_x+(sprite_get_width(spr_spiderDroid)*.5),
			spawn_y+(sprite_get_height(spr_spiderDroid)*.5),
			obj_collision,
			false,
			false
			))
		{
			var new_spawn = instance_create_layer(spawn_x,spawn_y,"Enemies",obj_spiderDroid);
			new_spawn.spawner_id=self;
			spawned++;
		}
		else
		{
			spawn_x = irandom_range(x-spawnDistance,x+spawnDistance)
			spawn_y = irandom_range(
				y-sprite_get_height(spr_spiderDroid),
				y-(sprite_get_height(spr_spiderDroid)*1.5)
				);
		};
	};
};
alarm[0]=spawnRate;