//Get inputs (1 = pressed, 0 = not pressed)
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check(ord("Z"));
//key_jump_held = keyboard_check(ord(vk_space));

//Checks to make sure player doesn't leave room 
if(room_width < x || x < 0 || room_height < y || y < 0)
{
	instance_destroy(id,true);
	show_debug_message("dead");
}

//Work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;

//Work out where to move vertically
vsp = vsp + grv;

/*if (place_meeting(x,y+1,obj_terrain)) and (key_jump)
{
vsp = vsp_jump;
}

if (vsp<0) and (!key_jump_held) {
	vsp = max(0,vsp);
}*/

//Work out if we should jump
if (place_meeting(x,y+1,obj_terrain)) and (key_jump)
{
	audio_play_sound(sfx_jump, 2, false);
    vsp = vsp_jump; 
}

//Check for horizontal collisions and then move if we can
var onepixel = sign(hsp) //moving left or right? right = 1, left = -1.
if (place_meeting(x+hsp,y,obj_terrain))
{
    //move as close as we can
    while (!place_meeting(x+onepixel,y,obj_terrain))
    {
        x = x + onepixel;
    }
    hsp = 0;
}
x = x + hsp;

//Check for vertical collisions and then move if we can
var onepixel = sign(vsp) //up = -1, down = 1.
if (place_meeting(x,y+vsp,obj_terrain))
{
    //move as close as we can
    while (!place_meeting(x,y+onepixel,obj_terrain))
    {
        y = y + onepixel;
    }
    vsp = 0;
}
y = y + vsp;
