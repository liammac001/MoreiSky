/****************\
*  Aidan Smith	 *
* [Leader] Smith *
\****************/




xSpeed = 0;
ySpeed = 0;

//Reduces delta_time to an usable value. ~FinalFate
getDeltaTime = delta_time / 100000;


//Player Movement
if (textActive = false)
{
	if (obj_Input.MOVERIGHT)
	{
		image_speed = 1;
		sprite_index = spr_PlayerRight;
		xSpeed += moveSpeed;
		direction = 0;
	}

	if (obj_Input.MOVELEFT)
	{
		image_speed = 1;
		sprite_index = spr_PlayerLeft;
		xSpeed -= moveSpeed;
		direction = 180;
	}

	if (obj_Input.MOVEDOWN)
	{
		image_speed = 1;
		sprite_index = spr_PlayerDown;
		ySpeed += moveSpeed;
		direction = 270;
	}

	if (obj_Input.MOVEUP)
	{
		image_speed = 1;
		sprite_index = spr_PlayerUp;
		ySpeed -= moveSpeed;
		direction = 90;
	}
}

if (xSpeed == 0 && ySpeed == 0)
{
	image_speed = 0;
	image_index = 0;
}

scr_MovementCollision();

if (instance_exists(obj_Interact))
{
	scr_NpcInteract();
}


//FPS dependant movement option
//x += xSpeed;
//y += ySpeed;



//Non FPS dependant movement ~FinalFate
x += xSpeed * getDeltaTime;
y += ySpeed * getDeltaTime;

