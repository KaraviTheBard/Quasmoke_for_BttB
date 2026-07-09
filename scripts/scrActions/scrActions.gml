#macro TEXT new textAction
#macro SPEAKER new SpeakerAction
#macro CHOICE new ChoiceAction
#macro OPTION new OptionAction
#macro GOTO new GotoAction

function dialogueAction() constructor
{
	 act = function() { };
}

//define new text to type out
function textAction(_text) : dialogueAction() constructor
{
	text = _text;
	
	act = function(textbox)
	{
		textbox.setText(text);	
	}
}

//set the speaker, optionally its portrait and the side the portrait is on
function SpeakerAction(_name, _sprite = undefined, _side = undefined): dialogueAction() constructor
	{
		name = _name;
		sprite = _sprite;
		side = _side;
		
		act = function(textbox)
		{
			textbox.speakerName = name;
			
			if (!is_undefined(sprite)) textbox.portraitSprite = sprite;
			
			if (!is_undefined(side)) textbox.portraitSide = side;

			textbox.next();
		}
	}
	
//Define a branch in the dialogue
function ChoiceAction(_text) : dialogueAction() constructor
{
	text = _text;
	
	//fill this array with all the arguments after the first one
	options = [];
	
	for (var i = 1; i < argument_count; i++)	array_push(options, argument[i]);
	
	act = function(textbox)
	{
		textbox.setText(text);
		textbox.options = options;
		textbox.optionCount = array_length(options);
		textbox.currentOption = 0;
	}	
}

//place options within the ChoiceAction
function OptionAction(_text, _topic): dialogueAction() constructor
{
	text = _text;
	topic = _topic;
	
	act = function(textbox)
	{
		textbox.setTopic(topic);	
	}
}

//Automatically go to a specified topic
function GotoAction(_topic): dialogueAction() constructor
{
	topic = _topic;
	
	act = function(textbox)
	{
		textbox.setTopic(topic);	
	}
}


