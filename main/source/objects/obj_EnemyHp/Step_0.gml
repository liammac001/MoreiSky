  /// @description Insert description here
// You can write your code in this editor
if (obj_Enemy.hp > 0)
{
	image_xscale = obj_Enemy.hp / obj_Enemy.maxHp;
}
else
{
	image_xscale = 0;	
}