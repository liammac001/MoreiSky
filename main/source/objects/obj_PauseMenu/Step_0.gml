 /****************\
*  Aidan David	 *
*      Aidan     *
\****************/

/// Control the menu
if (alarm[0] <= 0) {
    if (obj_Input.MOVEDOWN) {
        if (menuIndex < array_length_1d(option) - 1) {
            menuIndex ++; 
        } else {
            menuIndex = 0;
        }
        alarm[0] = room_speed / 6;
    }
    
    if (obj_Input.MOVEUP) {
        if (menuIndex > 0) {
            menuIndex --;
        } else {
            menuIndex = array_length_1d(option) - 1;
        }
        alarm[0] = room_speed / 6;
    }
    
    if (obj_Input.INTERACT) {
        switch (menuIndex) {
            case 0:
				obj_PlayerStats.roomStartAction = 0;
                room_goto(obj_PlayerStats .previousRoom);
                break;
                
            case 1:
                break;
            
            case 2:
                break;
                
            case 3:
				scr_Save();
				room_goto(obj_PlayerStats .previousRoom);
                break;
                
            case 4:
				obj_PlayerStats.roomStartAction = 1;
				room_goto(obj_PlayerStats.previousRoom);
                break;
                
            case 5:
                game_end();
                break;
                
            default:
                break;
        }
        obj_Input.INTERACT = false;
    }
}