//sets depth on creation and spawns buttons
depth = -20; 
instance_create_layer(x, y + sprite_height/5,"Instances", quit_obj);
instance_create_layer(x, y - sprite_height/5,"Instances", retry_obj);