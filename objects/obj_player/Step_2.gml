/// @description ANIMATION
if hsp > 0 {
if playerdirection = 0 {
show_debug_message("change to 1");	
}
playerdirection = 1; //right
}
if hsp < 0 {
if playerdirection = 1 {
show_debug_message("change to 0");	
}
playerdirection = 0; //left	
}
if vsp != 0 {
if playerdirection = 1 {
image_index = 1;
}
if playerdirection = 0 {
image_index = 3;	
}	
}
else {
if !collision_rectangle(x,y,x+32,y+64,obj_terrain,true,false) {
if playerdirection = 1 {
image_index = 1;
}
if playerdirection = 0 {
image_index = 3;	
}		
}
if hsp != 0 {
if image_index = 0 or image_index = 2 {
if frametimer = 5 {
if playerdirection = 1 {
image_index = 1;
}
if playerdirection = 0 {
image_index = 3;	
}
frametimer = 0;
}
else {
if playerdirection = 1 {
image_index = 0;
frametimer++;
}
if playerdirection = 0 {
image_index = 2;
frametimer++;
}
}
}
else {
if frametimer = 5 {
if playerdirection = 1 {
image_index = 0;
frametimer=0;
}
if playerdirection = 0 {
image_index = 2;
frametimer=0;
}
}
else {
if playerdirection = 1 {
image_index = 1;
frametimer++;
}
if playerdirection = 0 {
image_index = 3;
frametimer++;
}
}
}
}
else {
if playerdirection = 0 {
image_index = 2;
}
if playerdirection = 1 {
image_index = 0;	
}
}
}