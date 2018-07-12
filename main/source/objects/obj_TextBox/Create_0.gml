//Text box variables
PRoomWidth = display_get_gui_width() - 50;
PRoomHeight = display_get_gui_height() - 10;
//Text variables
textX = display_get_gui_width() - PRoomWidth + 10;
textY =  display_get_gui_height() - 200;
textW = PRoomWidth - 50;
//Needed variables
currInstance = obj_PlayerHitBox.currInstance; //Current active object
currBrch = currInstance.currBrch; //Current branch
currStr = 1; //Current string
str = currInstance.objStr[currBrch,currStr]; //Loads 1st string from object
strVal = string_length(str); //Gets length of string
index = 0; //Letter to type
textSpeed = 0.05; //Lower value = faster speed
textCont = false;
variance = currInstance.variance; //get number of branches from object
interactCount = obj_Player.interactCount;
interactCount = 0;
killMe = false;
skip = false;