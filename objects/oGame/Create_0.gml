/// @description Initialize globals & stuff

//All the battle variables
//After player dies, to use for reseting the battle room
global.makeNewBattle = false;
global.restartBroom = false; //battle room - Broom... yeah...

global.enemyAlive = true;
global.playerTurn = true;
global.enemyTurn = false;
global.enemyHit = false;
global.playerHit = false;
global.playerNotHit = false;
global.EnemyDead = false;
global.GoHome = false;
global.playerDead = false;


//More globals
global.dialogueActive = false;
global.iCamera = instance_create_layer(0,0,layer,oCamera);

randomise();

global.pause = false;