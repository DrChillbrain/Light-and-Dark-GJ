/// @description Insert description here
// You can write your code in this editor
// Checking for inputs
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("W"));
key_jump_held = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

// React to inputs
var move = key_right-key_left;
h_speed = move*movespeed;
if v_speed < 10 {
v_speed+=grav;
}

//Jump
if collision_rectangle(x,y+1,x+64,y+97,obj_terrain,true,false) {
v_speed = (key_jump * -jumpspeed);
}

if (v_speed <0) and (!key_jump_held) {
	v_speed = max(0,v_speed);
}

// Horizontal collision
if (collision_rectangle (x+h_speed,y-3,x+h_speed+64,y+93,obj_terrain,true,false)) {
while (!collision_rectangle(x+sign(h_speed),y,x+sign(h_speed)+64,y+96,obj_terrain,true,false)) {
	x+=sign(h_speed);
	}
	h_speed = 0;
}

// Move the character
x += h_speed;
y += v_speed;