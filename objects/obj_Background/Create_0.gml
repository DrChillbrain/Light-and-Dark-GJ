/// @description Insert description here
// You can write your code in this editor
depth = 50;
image_speed = 0;

backgroundCooldown = false;

globalvar isDark;

isDark = true;

inTransitionToLight = false;

inTransitionToDark = false;

audio_stop_sound(bgm);
audio_play_sound(bgm, 1, true);