/// @description Insert description here
// You can write your code in this editor
lifetime--;
if (lifetime<1) {
	instance_destroy();
}
var visibility = lifetime/60;
image_alpha = visibility;