/// @description Insert description here
// You can write your code in this editor
instance_destroy(other, false);
audio_play_sound(sfx_levelcomplete, 4, false);
instance_create_layer(room_width/2,room_height/2,"Instances", victory_obj);