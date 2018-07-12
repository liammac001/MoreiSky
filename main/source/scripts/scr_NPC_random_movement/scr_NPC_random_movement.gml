/***************\
*  Dhruv Yadav	*
*  XXpoomaanXX  *
\***************/

randomize();
var rndm = irandom(10);

switch(rndm)
{
	case 1:
		if(place_free(x,y+32))
		{
			image_speed = 1;
			sprite_index = downimage;
			path_start(path_npc_down, 2.5, path_action_stop, false);
			break;
		}
	case 2:
		if(place_free(x,y-32))
		{
			image_speed = 1;
			sprite_index = upimage;
			path_start(path_npc_up, 2.5, path_action_stop, false);
			break;
		}	
	case 3:
		if(place_free(x+32,y))
		{
			image_speed = 1;
			sprite_index = rightimage;
			path_start(path_npc_right, 2.5, path_action_stop, false);
			break;
		}
	case 4:
		if(place_free(x-32,y))
		{
			image_speed = 1;
			sprite_index = leftimage;
			path_start(path_npc_left, 2.5, path_action_stop, false);
			break;
		}
	case 5:
		sprite_index = downimage;
		break;
	case 6:
		sprite_index = upimage;
		break;	
	case 7:
		sprite_index = rightimage;
		break;
	case 8:
		sprite_index = leftimage;
		break;
	case 0:
		break;
	case 10:
		break;
}