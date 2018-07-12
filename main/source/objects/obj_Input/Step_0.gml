/****************\
*  Aidan David	 *
*      Aidan     *
\****************/

// Get input here instead of on player object
scr_GetInput();

if (room = rm_GameOver and INTERACT)
{
	game_restart();	
}

// For testing purposes, starts battle
if (obj_Input.BATTLE and room != menu_Pause and room != rm_Battle)
{
	if (instance_exists(obj_Player))
	{
		obj_Player.persistent = false;	
	}
	obj_PlayerStats.previousRoom = room;
	room_persistent = true;
	global.state = scr_StartBattle;
	obj_Input.BATTLE = false;
}