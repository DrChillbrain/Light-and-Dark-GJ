//blood explosion animation

//Death menu
audio_play_sound(sfx_dead, 2, false);
instance_create_layer(room_width/2,room_height/2, "Instances", death_obj);