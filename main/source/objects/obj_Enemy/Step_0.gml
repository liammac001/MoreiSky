  /****************\
*  Aidan David	 *
*      Aidan     *
\****************/

// Even animals die if they are killed
if (hp <= 0)
{
	enemyNo -= 1;
	if (enemyNo <= 0)
	{
		scr_EndBattle();
	}
	else
	{
		instance_deactivate_object(obj_Enemy);
	}
}

// Control stats in battle
if (room != rm_Battle) exit;

if (obj_PlayerStats.hit == true)
{
	hp = hp - (obj_PlayerStats.str / con);	
	obj_PlayerStats.hit = false;
}

if (obj_BattleMenu.turn == "enemy" and hp > 0) 
{
	if (random_range(0,100) < (50 + agi - obj_PlayerStats.agi + str))
	{
		hit = true;
	}
	obj_BattleMenu.turn = "player";
}