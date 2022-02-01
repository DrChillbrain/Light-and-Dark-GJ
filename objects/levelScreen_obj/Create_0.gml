/// @description Insert description here
// You can write your code in this editor
heightOne = room_height/3;
heightTwo = room_height- room_height/3;
j = 0; 

for(i = 0; i < 10; i++)
{
	if(i<=4)
	{
		level = instance_create_layer(0+room_width/6*(i+1), heightOne,"Instances", level_button_obj);
		level.levelNumber = i;
	}
	else
	{
		level = instance_create_layer(0+room_width/6*(j+1), heightTwo,"Instances", level_button_obj);
		level.levelNumber = i;
		j++;
	}
}