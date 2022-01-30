/// @description Insert description here
// You can write your code in this editor

//Change background
if(keyboard_check(ord("X")) && !backgroundCooldown)
{
	/*
	//If is dark, make it light
	if(image_index == 0)
	{
		image_index = 1;
		isDark = false;
	}
	//if is light, make it dark
	else
	{
		image_index = 0;
		isDark = true;
	}
	
	backgroundCooldown = true;
	alarm_set(0, 120);
	*/
	
	/*
	if(image_index == 0)
	{
		//make it light
		while(image_index < image_number - 1)
		{
			image_index++;
		}
		
		isDark = false;
	}
	else
	{
		
		//make it dark
		while(image_index > 0)
		{
			image_index--;
		}
		isDark = true;
	}
	backgroundCooldown = true;
	alarm_set(0, 120);
	*/
	
	if(image_index == 0)
	{
		show_debug_message("Making it light");
		//make it light
		image_speed = 1;
		inTransitionToLight = true;
		
		audio_play_sound(sfx_swap, 1, false);
	}
	else
	{
		show_debug_message("Making it dark");
		//make it dark
		image_speed = -1;
		inTransitionToDark = true;
		
		audio_play_sound(sfx_swap, 1, false);
	}
	backgroundCooldown = true;
	alarm_set(0, 60);
}

if(inTransitionToLight && image_index >= 6)
{
	image_index = 5;
	show_debug_message("reached light background");
	show_debug_message(image_index);
	image_speed = 0;
	inTransitionToLight = false;
	isDark = false;
}

if(inTransitionToDark && (image_index == 0 || image_index > 7))
{
	image_index = 0;
	show_debug_message("reached dark background");
	show_debug_message(image_index);
	image_speed = 0;
	inTransitionToDark = false;
	isDark = true;
}


