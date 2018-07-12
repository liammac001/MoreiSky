//Text Skip

if (keyboard_check(vk_space)) alarm[1] = room_speed * .5;

if (currStr = currInstance.strCount[currBrch] && keyboard_check(vk_space) or firstSkip = true && currStr = currInstance.strCount[currBrch])
{
	if (currBrch < variance) with (currInstance) currBrch++;
	instance_destroy(obj_TextBox);
}

else
{	
	if (keyboard_check(vk_space) or firstSkip = true)
	{
		currStr++; //Go to next string
		str = currInstance.objStr[currBrch,currStr]; //Change string
		index = 0; //Reset index
		strVal = string_length(str); //Get string value
		alarm[0] = room_speed * textSpeed;
	}
}

firstSkip = false;