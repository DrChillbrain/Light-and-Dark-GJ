/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sfx_button, 2, false);
if(currentLevel <=9)
{
	room_goto(Level_select_rm);
}
else
{
	room_goto(Level_select2_rm);
}
