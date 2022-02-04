/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sfx_button, 2, false);
if(levelClear == currentLevel)
{
	levelClear++;
}
currentLevel++;
room_goto_next();
