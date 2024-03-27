if(hasHit==true)
{
	part_particles_create(global.particleSystem,x,y,global.part_em_damage,10);
	instance_destroy(self);
};