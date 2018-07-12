/****************\
*  Aidan David	 *
*      Aidan     *
\****************/

if (room = menu_Pause) exit;
if (room = rm_Battle) exit;

switch (roomStartAction) {
    case 0:
		default:
        break;
    
    case 1:
		playerXStart = obj_Player.x;
        playerYStart = obj_Player.y;
        scr_Load();
        break;
}

global.state = scr_PlayerMovement;
room_persistent = false;
roomStartAction = -1;