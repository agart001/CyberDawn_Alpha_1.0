if(obj_BC_testPlayer.hasAllGuns)
{
	instance_destroy(obj_BC_controller);
	instance_destroy(other);
	instance_destroy(self);
	room_goto(rm_finish);
};