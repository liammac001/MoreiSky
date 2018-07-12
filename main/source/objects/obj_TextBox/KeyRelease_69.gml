if (killMe = true)
{
	interactCount = 0;
	instance_destroy(obj_TextBox); //Destroy textbox
}

if (skip = true)
{
	skip = false;
	alarm[0] = room_speed * textSpeed;
}

if (interactCount = 0)
{
	alarm[0] = room_speed * textSpeed; //Set draw alarm (for typewriter affect)
}