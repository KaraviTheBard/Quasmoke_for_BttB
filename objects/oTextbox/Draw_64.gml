var draw_text_x = x;
var draw_text_y = y;
var draw_text_width = textWidth;

var finished = textProgress == textLenght;

// Portrait
if (sprite_exists(portraitSprite))
{
	

	var draw_portrait_x = x + portraitX;
	var draw_portrait_y = y + portraitY;
	var draw_portrait_xscale = 1;
	
	
	//what side is the portrait on?
	if (portraitSide == PICTURE_SIDE.LEVO)
	{
	//shift the text over when the portrait is on the left 
	//draw_text_x += portraitWidth + portraitX + padding;
	}
	else if (portraitSide == PICTURE_SIDE.PRAVO)
	{
		//shift the portrait itself over when it is on the right
		draw_portrait_x = x + width - portraitX - portraitWidth;
	}
	
	// Animate the portrait when typing
	var subimg = 0;
		
	if (!finished)
		{
		    var frames = sprite_get_number(portraitSprite);
		    var anim_speed = 0.1; // frames per step
		    subimg = floor((current_time div 16) * anim_speed) mod frames;
		}


	draw_sprite_ext(portraitSprite, subimg, draw_portrait_x + portraitWidth / 2, draw_portrait_y + portraitHeight / 2, draw_portrait_xscale, 1, 0, c_white, 1);
	
}


//draw the textbox
draw_sprite_stretched(sprite_index, 0, x, y, width, height);

//speaker
if (speakerName != " ")
{
	//expand the nameplate if the name is wider than the default width
	var name_w = max(string_width(speakerName), speakerWidth);
	
	draw_sprite_stretched(sNameTag, 0, x + textX + 330, y + textY - 110, name_w, speakerHeight);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(speakerFont);
	draw_set_colour(speakerColour);
	draw_text(x + textX + 470, y + textY - 60, speakerName);
}


//text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(textFont);
draw_set_colour(textColour);
type(draw_text_x + textX, draw_text_y + textY, text, textProgress, draw_text_width);

//Options
if (finished && optionCount > 0)
{
	draw_set_valign(fa_middle);
	draw_set_colour(optionTextColour);
	
	for (var i = 0; i < optionCount; i++)
	{
		var opt_x = x + optionX + 50;
		var opt_y = y + optionY - (optionCount - i - 1) * optionSpacing;
		
		//selected option is indented with an arrow
		if (i == currentOption)
		{
			opt_x += optionSelectionIndent;
			draw_sprite(sOptionArrow, 0, opt_x, opt_y);
		}
		
		draw_sprite_stretched(sOptionBox, 0, opt_x-30, opt_y - optionHeight / 2, optionWidth, optionHeight);
		draw_text(opt_x + optionTextX, opt_y, options[i].text);
		
	}
}

