
switch(string(obj_testPlayer.currentGun))
{
	case "BASIC":
		guns_index = 0;
	break;
	case "SPREAD":
		guns_index = 1;
	break;
	case "CHARGE":
		guns_index = 2;
	break;
	case "BEAM":
		guns_index = 3;
	break;
	case "BOUNCE":
		guns_index = 4;
	break;
};

switch(obj_world.prevLevel)
{
	case "rm_1":
	prevLevel_index=0;
	break;
	case "rm_2":
	prevLevel_index=1;
	break;
	case "rm_3":
	prevLevel_index=2;
	break;
};

switch(obj_world.nextLevel)
{
	case "rm_2":
	nextLevel_index=0;
	break;
	case "rm_3":
	nextLevel_index=1;
	break;
	case "rm_4":
	nextLevel_index=2;
	break;
};
