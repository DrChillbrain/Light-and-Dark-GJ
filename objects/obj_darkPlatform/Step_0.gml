/// @description Insert description here
// You can write your code in this editor

if(!isDark && !terrainSpawned)
{
	//show_debug_message("creating thing");
	terrain = instance_create_layer(x, y, "Instances", obj_terrain);
	if(noone != collision_rectangle(x-sprite_width/2, y- sprite_height/2, x + sprite_width/2, y + sprite_height/2, obj_player, false, true))
	{
		instance_destroy(obj_player, true);
		//show_debug_message("try to destroy player");
	}
	terrainDeleted = false;
	terrainSpawned = true;
	show_debug_message(terrain);
}

if(isDark && !terrainDeleted)
{
	//show_debug_message("destroying terrain");
	show_debug_message(terrain);
	instance_destroy(terrain);
	terrainSpawned = false;
	terrainDeleted = true;
}

if(isDark)
{
	image_index = 0;
}
else if(obj_Background.inTransitionToLight || !isDark)
{
	image_index = 1;
}
