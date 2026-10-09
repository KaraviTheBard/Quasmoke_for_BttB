//This one you actually need to call!
//Creates a textbox and start a conversation
//@param topic - what topic the dialogue box should use
function startDialogue(topic)
{
	if (instance_exists(oTextbox))
		return;
	
	var inst = instance_create_depth(x, y, -999, oTextbox);
	inst.setTopic(topic);
	global.dialogueActive = true;
}

function type(x, y, text, progress, width)
{
	 var drawX = 0;
	 var drawY = 0;
	 
	 for (var i = 1; i <= progress; i++) 
	 {
		var char = string_char_at(text, i);
		
		//handle normal line breaks
		if (char == "\n")
		{
			drawX = 0;
			drawY += string_height("A");
		}
		
		//if we're starting a new word, we can line break
		else if (char == " ")
		{
			drawX += string_width(char);
			
			var wordWidth = 0;
			for (var ii = i + 1; ii <= string_length(text); ii++)
			{
				var wordChar = string_char_at(text, ii);
				
				//if we reached the end of the word, stop checking
				if (wordChar == "\n" || wordChar == " ")
				break;
				
				//if the current word extend past the width boundary, move it to the next line
				wordWidth += string_width(wordWidth);
				if (drawX + wordWidth > width)
				{
					drawX = 0;
					drawY += string_height("A");
					break;
				}
			}
		}
		else
		{
			//draw the letter
			draw_text(x + drawX, y + drawY, char);
			drawX += string_width(char);
		}
	}
}
