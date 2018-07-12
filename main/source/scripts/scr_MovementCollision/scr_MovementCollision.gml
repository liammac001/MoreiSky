/****************\
*  Aidan Davis	 *
*      Aidan     *
\****************/
if (place_meeting(x + xSpeed * getDeltaTime, y, obj_Wall))
{
	while !place_meeting(x + sign(xSpeed), y, obj_Wall)
	{
		x += sign(xSpeed);
	}
	
    xSpeed = 0;		
}

if (place_meeting(x, y + ySpeed * getDeltaTime, obj_Wall))
{
	while !place_meeting(x, y + sign(ySpeed), obj_Wall)
	{
		y += sign(ySpeed);
	}
	
	ySpeed = 0;
}
