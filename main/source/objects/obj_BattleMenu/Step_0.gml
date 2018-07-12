  /// @description Insert description here
// You can write your code in this editor

if (turn != "player") exit;

/// Control the menu
if (alarm[0] <= 0) 
{
    if (obj_Input.MOVERIGHT) 
	{
        if (menuIndex < array_length_1d(option) - 1) 
		{
            menuIndex ++; 
        } 
		else 
		{
            menuIndex = 0;
        }
        alarm[0] = room_speed / 6;
    }
    
    if (obj_Input.MOVELEFT) 
	{
        if (menuIndex > 0) 
		{
            menuIndex --;
        } 
		else 
		{
            menuIndex = array_length_1d(option) - 1;
        }
        alarm[0] = room_speed / 6;
    }
    
    if (obj_Input.INTERACT) 
	{
        switch (menuIndex) 
		{
            case 0:
				if (random_range(0, 100) <= (50 + obj_PlayerStats.agi - (obj_PlayerStats.maxSan / obj_PlayerStats.san / 10) - obj_Enemy.agi + obj_PlayerStats.str))
				{
					obj_PlayerStats.hit = true;
				}
				turn = "enemy"
                break;
                
            case 1:
                break;
            
            case 2:
                break;
                
            case 3:
				room_goto(obj_PlayerStats.previousRoom);
                break;
		}
                
        obj_Input.INTERACT = false;
    }
}