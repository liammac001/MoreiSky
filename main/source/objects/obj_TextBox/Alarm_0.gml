if (keyboard_check(ord("P"))) //Speed up text
{
	textSpeed = 0.03;
}

else //Normal text speed
{
	textSpeed = 0.05;
}

if (index < strVal) //Type out letters
{
	index++;
	alarm[0] = room_speed * textSpeed;
	interactCount = 1;
}

else //Bring up continue prompts
{
	interactCount = 2;
	textCont = true;
}

if (keyboard_check(ord("E")) && interactCount = 1 && skip = false) //skip current dialogue
{
	index = strVal;
	textCont = true;
	skip = true;
}