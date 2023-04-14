/// @description 


timer = settimer-1

direction = -90

speed = 1

side = 0


var bullet = instance_create_depth(x,y,depth-1,obj_plr_bullet_impact);
bullet.image_yscale = -1;
bullet.image_blend = #ff0000;
