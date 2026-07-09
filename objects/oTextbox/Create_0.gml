///Customizable variables

//input
confirmKey = vk_space; //button to press to go to the next page
upKey = vk_up; //for moving up in options
downKey = vk_down; //for moving down in options
maxInputDelay = 5; //how many frames to go to the next page
inputDelay = maxInputDelay;

//Position
margin = 35; //how much space hte textbox gets from edges of the screen
padding = 26; // how much space things inside the textbox get
width = display_get_gui_width() - margin * 2;
height = sprite_height * 3;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - margin;

//text
textFont = fDialogue;
textColour = c_black;
textSpeed = 0.6;
textX = padding;
textY = padding;
textWidth = width ; //-padding (there was in original)

// Portrait
portraitX = padding - 30;
portraitY = padding - 350;

//speaker
speakerX = padding;
speakerY = 0;
speakerFont = fNameTag;
speakerColour = c_black;

optionX = padding;
optionY = padding * -6;
optionSpacing = 70;
optionSelectionIndent = 30;
optionWidth = 300;
optionHeight = 40;
optionTextX = 10;
optionTextColour = c_black;

///Private properties
/*** DO NOT TOUCH THIS!***/
actions = [];
currentAction = -1;

text = "";
textProgress = 0;
textLenght = 0;

enum PICTURE_SIDE
{
	LEVO,
	PRAVO
}


portraitSprite = -1;
portraitWidth = sprite_get_width(sPortrait);
portraitHeight = sprite_get_height(sPortrait);
portraitSide = 0;

speakerName = " ";
speakerWidth = sprite_get_width(sNameTag);
speakerHeight = sprite_get_height(sNameTag);

options = [];
currentOption = 0;
optionCount = 0;

///Methods
/***Generally you never need to call these manually***/

//Start a conversation
setTopic = function(topic)
{
	actions = global.topics[$ topic];
	currentAction = -1;
	
	next();
}

//Move to the next action, or close the textbox if out of actions
next = function()
{
	currentAction++;
	if (currentAction >= array_length(actions))
	{
		global.dialogueActive = false;
		
		instance_destroy();
	}
	else
	{
		actions[currentAction].act(id);
	}
}

 //Set the text that should be tzped out
 setText = function(newText)
 {
	text = newText;
	textLenght = string_length(newText);
	textProgress = 0;
 }