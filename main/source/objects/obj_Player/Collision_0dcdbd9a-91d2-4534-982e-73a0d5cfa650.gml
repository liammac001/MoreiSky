/// @description Go through the door
/****************\
*  Aidan Smith	 *
* [Leader] Smith *
\****************/
if (room_exists(other.newRoom))
{
	//Change the current persistent room
	room_set_persistent(other.newRoom, true);
	room_persistent = false;
	
	//Move to the new room
	room_goto(other.newRoom);
	x = other.newX;
	y = other.newY;
}

