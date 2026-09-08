// Create event of oBattle
sequenceLength = 4;
enemySequence = [];

randomize();

for (var i = 0; i < sequenceLength; i++) {
    enemySequence[i] = irandom(2); // 0 = yellow, 1 = green, 2 = orange
}


showIndex = 0;
showTimer = 0;
showDelay = 30;
showingSequence = true;
flashTime = 20;
gapTime   = 10;
state = "flash";

currentColour = -1; // -1 means nothing lit

playerTurn = false;
playerIndex = 0;
