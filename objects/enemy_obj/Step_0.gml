/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("X")) && !cooldown && !playerDead)
{
	if(image_index == 0)
	{
		show_debug_message("Making it light");
		//make it light
		image_speed = 1;
		inTransitionToLight = true;
	}
	else
	{
		show_debug_message("Making it dark");
		//make it dark
		image_speed = -1;
		inTransitionToDark = true;
	}
	
	cooldown = true;
	alarm_set(0,40);
}

if(inTransitionToLight && image_index >= 6)
{
	image_index = 5;
	image_speed = 0;
	inTransitionToLight = false;
}

if(inTransitionToDark && (image_index == 0 || image_index > 7))
{
	image_index = 0;
	image_speed = 0;
	inTransitionToDark = false;
}
