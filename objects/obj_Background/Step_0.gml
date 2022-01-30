/// @description Insert description here
// You can write your code in this editor

//Change background
if(keyboard_check(ord("T")) && !backgroundCooldown)
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
		isDark = false;
	}
	else
	{
		show_debug_message("Making it dark");
		//make it dark
		image_speed = -1;
		inTransitionToDark = true;
		isDark = true;
	}
	backgroundCooldown = true;
	alarm_set(0, 120);
}

if(inTransitionToLight && image_index == 4)
{
	show_debug_message("reached light background");
	image_speed = 0;
	inTransitionToLight = false;
}

if(inTransitionToDark && image_index == 0)
{
	show_debug_message("reached dark background");
	image_speed = 0;
	inTransitionToDark = false;
}


