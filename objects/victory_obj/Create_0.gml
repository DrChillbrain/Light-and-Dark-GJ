//sets depth on creation and spawns buttons
depth = -20; 
instance_create_layer(0 + room_width/4, y,"Instances", level_obj);
instance_create_layer(0 + room_width/4*2, y,"Instances", quit_obj);
instance_create_layer(0 + room_width/4*3, y,"Instances", next_obj);