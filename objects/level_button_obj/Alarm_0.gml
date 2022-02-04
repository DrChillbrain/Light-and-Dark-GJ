/// @description Insert description here
// You can write your code in this editor
if(room == Level_select_rm)
{
	number = instance_create_layer(x,y + offset,"Instances",number_obj);
	number.image_index = levelNumber;
}
else
{
	if(levelNumber != 1)
	{
		number = instance_create_layer(x - 39,y + offset,"Instances",number_obj);
		number.image_index = 1;
		number = instance_create_layer(x + 10,y + offset,"Instances",number_obj);
		number.image_index = levelNumber;
	}
	else
	{
		number = instance_create_layer(x - 25,y + offset,"Instances",number_obj);
		number.image_index = 1;
		number = instance_create_layer(x + 25,y + offset,"Instances",number_obj);
		number.image_index = levelNumber;
	}
}

if(levelClear >= levelNumber && room != Level_select2_rm)
{
	available = true;
}
else if(levelClear - 10 >= levelNumber)
{
	available = true;
	levelNumber += 10;
}
else
{
	image_index = 2; 	
}