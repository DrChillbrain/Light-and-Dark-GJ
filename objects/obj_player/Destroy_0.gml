//blood explosion animation
repeat irandom_range(30,50) {
particlex = irandom_range(0,32)
particley = irandom_range(0,64)
instance_create_layer(x+particlex,y+particley,"Instances",obj_particle);
}
//Death menu
audio_play_sound(sfx_dead, 2, false);
instance_create_layer(room_width/2,room_height/2, "Instances", death_obj);