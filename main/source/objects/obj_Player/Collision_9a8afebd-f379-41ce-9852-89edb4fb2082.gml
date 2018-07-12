if (room_exists(other.newRoom))
{
	obj_PlayerStats.previousRoom = room;
	
	//Move to the new room
	room_goto(other.newRoom);
	x = other.newX;
	y = other.newY;
}
