//sets depth on creation and spawns buttons
depth = -20; 
instance_create_layer(x, y + sprite_height/6,"Instances", quit_obj);
instance_create_layer(x, y - sprite_height/6,"Instances", next_obj);