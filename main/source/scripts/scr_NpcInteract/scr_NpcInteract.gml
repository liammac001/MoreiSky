/****************\
*   Liam Sood	 *
*    majorOwO    *
\****************/
cLayer = layer_get_id("Player")
interactBox = obj_BouncingE; //Bouncing letter "e"
textBox = obj_TextBox; //Textbox object
hitbox = obj_PlayerHitBox; //Player hitbox
playerX = obj_Player.x; //Player x
playerY = obj_Player.y; //Player y
interactNearest = instance_nearest(hitbox.x,hitbox.y,obj_Interact); //Finds nearest interactable object
interactX = interactNearest.x; //Nearest object's x
interactY = interactNearest.y; //Nearest object's y
oldHitbox = hitbox.id; //Makes things work
interactCount = obj_Player.interactCount;

if !(xSpeed == 0 && ySpeed == 0) //Check if player is moving
{
	instance_create_layer(playerX, playerY,cLayer, hitbox);
}

hitbox.image_angle = direction; //Aligh hitbox

if (place_meeting(interactX,interactY,hitbox)) //Check for a collision
{
	while (!instance_exists(interactBox)) 
	{
		instance_create_depth(interactX, interactY - 25, -10000, interactBox); //Draw bouncing "e"
	}
	
	if (keyboard_check(ord("E")) && interactNearest.objStr > 0 && !instance_exists(textBox)) //Open textbox
	{
		while !instance_exists(textBox)
		instance_create_layer(interactX, interactY, cLayer, textBox);
		textActive = true; //Tells movement controls that a textbox is open
	}
	//below code exits text box, for testing. uncomment if needed
//	if (keyboard_check(ord("Z")) and instance_exists(textBox)) //Exit textbox
//	{
//		if (hitbox.currInstance.currBrch < obj_PlayerHitBox.currInstance.variance) with (obj_PlayerHitBox.currInstance) obj_PlayerHitBox.currInstance.currBrch++; //Add to branch variable
//		instance_destroy(textBox); //destroy textbox
//	}
}


else
{
	instance_destroy(interactBox); //clean up bouncing "e"
}

if (instance_number(hitbox) >1) //clean up hitbox
{
	instance_destroy(oldHitbox);
}

if (instance_number(textBox) <1) //allow movement when textbox closes
{
	textActive = false;
}
