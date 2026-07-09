//get input
var confirm = keyboard_check_pressed(confirmKey);

//type out the text
textProgress = min(textProgress + textSpeed, textLenght);

//Ignore inputs when delay is active
 if (inputDelay > 0)
 {
	inputDelay--;
	exit;
 }

//are we finished typeing
if (textProgress == textLenght)
{
	if (optionCount > 0)
	{
		var up = keyboard_check_pressed(upKey);
		var down = keyboard_check_pressed(downKey);
		
		//cycle trough aavailable options
		var change = down - up;
		if (change != 0)
		{
			currentOption += change;
			
			//wrap to the first and last option
			if (currentOption < 0) currentOption = optionCount - 1;
			else if (currentOption >= optionCount) currentOption = 0;
		}
		
		//select an option
		if (confirm)
		{
			var option = options[currentOption];
			options = [];
			optionCount = 0;
			
			option.act(id);
		}
		
	}
	else if (confirm)
	{
		next();
	}
	
}
else if (confirm)
{
	textProgress = textLenght;
}

