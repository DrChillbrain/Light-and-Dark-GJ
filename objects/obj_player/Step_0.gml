//Get inputs (1 = pressed, 0 = not pressed)
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check(vk_space);
key_jump_held = keyboard_check(ord(vk_space));

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
