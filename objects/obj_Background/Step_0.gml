/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("T")) && !backgroundCooldown)
{
	if(image_index == 0)
	{
		image_index = 1;
		isDark = false;
	}
	else
	{
		image_index = 0;
		isDark = true;
	}
	
	backgroundCooldown = true;
	alarm_set(0, 120);
}