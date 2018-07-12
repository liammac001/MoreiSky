/// @description Go to pause menu
/****************\
*  Aidan Smith	 *
* [Leader] Smith *
\****************/
persistent = false;

room_set_persistent(menu_Pause, true);
menu_Pause.previous_Room = room;

room_goto(menu_Escape);
