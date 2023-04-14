/// @description

if(timer <= 0) timer = settimer else timer -= 1;//timer loop


if(start) speed -= .05

if(speed >= .2) start = false;

if(timer == settimer && !start) 
{
	
	dir = round(point_direction(x,y,obj_player.x,obj_player.y)/16)*16;
	side = sign(angle_difference(dir,direction));
		
}


if(speed > .5)
{
	if(side == -1) direction -= angle_speed else direction += angle_speed;
	
}



image_angle = direction;

if(speed <= .6 && !start) speed += .01;

