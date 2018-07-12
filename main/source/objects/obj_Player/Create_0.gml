/// @description Variable Initialization
/****************\
*  Aidan Smith	 *
* [Leader] Smith *
\****************/

//Variables
moveSpeed = 25;
xSpeed = 0;
ySpeed = 0;
direction = 270;
persistent = true;
interactCount = 0;
instance_create_layer(x,y,layer,obj_PlayerHitBox);
global.state = scr_PlayerMovement;