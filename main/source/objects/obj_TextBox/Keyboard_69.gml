if (index = strVal && currStr = currInstance.strCount[currBrch] && interactCount = 2 && skip = false) //Check for end of dialogue
{
	currStr = 1;
	if (currBrch < variance) with (currInstance) currBrch++; //Go to next branch
	killMe = true;
}

if (index = strVal && currStr < currInstance.strCount[currBrch] && interactCount = 2 && skip = false) //Check for next dialogue string
{
	textCont = false;
	currStr++; //Go to next string
	str = currInstance.objStr[currBrch,currStr]; //Change string
	index = 0; //Reset index
	strVal = string_length(str); //Get string value
	if (skip = false) alarm[0] = room_speed * textSpeed; //Reset alarm
	skip = true;
}