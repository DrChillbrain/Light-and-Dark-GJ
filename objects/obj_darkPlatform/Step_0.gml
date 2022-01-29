/// @description Insert description here
// You can write your code in this editor

if(!isDark && !terrainSpawned)
{
	show_debug_message("creating thing");
	terrain = instance_create_layer(x, y, "Instances", obj_terrain);
	terrainDeleted = false;
	terrainSpawned = true;
	show_debug_message(terrain);
}

if(isDark && !terrainDeleted)
{
	show_debug_message("destroying terrain");
	show_debug_message(terrain);
	instance_destroy(terrain);
	terrainSpawned = false;
	terrainDeleted = true;
}
