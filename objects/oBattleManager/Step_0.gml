//reseting the battle room when player died
if (global.makeNewBattle && global.restartBroom)
{
	global.enemyAlive = true;
	global.playerTurn = true;
	global.enemyTurn = false;
	global.enemyHit = false;
	global.playerHit = false;
	global.playerNotHit = false;
	global.GoHome = false;
	
	global.makeNewBattle = false;
	global.restartBroom = false;
}


if (global.enemyTurn && global.EnemyDead = false)
{
	room_goto(rmEnemyAttack)
}
