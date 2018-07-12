 /****************\
*  Aidan David	 *
*      Aidan     *
\****************/

// People die if they are killed
if (hp <= 0 and room == rm_Battle)
{
	room_goto(rm_GameOver);
	
}

// Get the player's x start and y start
if (instance_exists(obj_Player)) {
    playerXStart = obj_Player.x;
    playerYStart = obj_Player.y;
} 

// Pause or unpause
if (obj_Input.PAUSE and room != rm_Battle) 
{
	if (room != menu_Pause) 
	{
		if (instance_exists(obj_Player))
		{
			obj_Player.persistent = false; 	
		}
		previousRoom = room;
		room_persistent = true; 
		room_goto(menu_Pause);
	}
	else
	{
		room_goto(previousRoom);	
	}
	obj_Input.PAUSE = false;
}

// Control stats in battle
if (room != rm_Battle) exit;

if (obj_Enemy.hit == true)
{
	hp = hp - (obj_Enemy.str / con);	
	obj_Enemy.hit = false;
}

// Level up
if (expr >= level * 5)
{
	level += 1;
	expr = expr - level * 5;
	
	if (random_range(1, 3) = 1)
	{
		maxHp += 1;
	}
	
	if (random_range(1, 3) = 1)
	{
		str += 1;
	}
	
	if (random_range(1, 3) = 1)
	{
		con += 1;
	}
	
	if (random_range(1, 3) = 1)
	{
		agi += 1;
	}
	
	hp = maxHp;
}
