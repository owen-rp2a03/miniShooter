/// @description

if(image_index == 0) //standard turret
{
	if(image_xscale < 0)
	{
		left = true
	}



	if(image_yscale == 2)
	{
		straight = true
	
		settimer = settimer/2
	}

	timer = settimer
}

if(image_index == 1) //missile launcher
{
	instance_create_depth(x,y,depth+1,obj_emy_missle)
	
	instance_destroy(self)
}

