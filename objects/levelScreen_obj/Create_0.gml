/// @description Insert description here
// You can write your code in this editor
verticalOffset = -100;
heightOne = room_height/3 + verticalOffset;
heightTwo = room_height- room_height/3 + verticalOffset;
j = 0; 

playerDead = false;

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

if(levelClear > 9 && room == Level_select_rm)
	instance_create_layer(room_width - 70, room_height/2 + levelScreen_obj.verticalOffset, "Instances", level2_obj);