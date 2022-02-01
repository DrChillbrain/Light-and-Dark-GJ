/// @description Insert description here
// You can write your code in this editor
if(noone != collision_rectangle(x-sprite_width/2, y- sprite_height/2, x + sprite_width/2, y + sprite_height/2, obj_player, false, true))
	{
		instance_destroy(obj_player);
		//show_debug_message("try to destroy player");
	}