/// @description Insert description here
// You can write your code in this editor
if(((keyboard_check(ord("X")) or global.swaptimer = 120)) && !cooldown && !playerDead)
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

//creates platform on enemy
if(isDark && !terrainSpawned)
{
	//show_debug_message("creating thing");
	terrain = instance_create_layer(x, y, "Instances", enemy_terrain);
	if(noone != collision_rectangle(x-sprite_width/2, y- sprite_height/2, x + sprite_width/2, y + sprite_height/2, obj_player, false, true))
	{
		instance_destroy(obj_player);
		//show_debug_message("try to destroy player");
	}
	terrainDeleted = false;
	terrainSpawned = true;
	show_debug_message(terrain);
}

if(!isDark && !terrainDeleted)
{
	//show_debug_message("destroying terrain");
	show_debug_message(terrain);
	instance_destroy(terrain);
	terrainSpawned = false;
	terrainDeleted = true;
}

if(instance_exists(terrain))
{
	terrain.x = x;
	terrain.y = y;
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

if(isDark && !inTransitionToLight)
{
	if(image_index != 6)
	{
		//image_speed = 1;
	}
	else
	{
		//image_speed = 0;
	}
	if(movingDown)
	{
		vspeed = speedE; 
		if(y > startingY+range)
		{
			movingDown = false;	
		}
	}
	else
	{
		vspeed = -speedE;
		if(y < startingY-range)
		{
			movingDown = true;	
		}
	}
}
else
{
	vspeed = 0;
}