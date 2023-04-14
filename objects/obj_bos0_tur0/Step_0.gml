/// @description 

if(image_index == 0) //standard turret
{
	timer -= 1;


	if(timer <= 0)
	{
		timer = settimer;
	}


	if(timer == settimer-8)
	{
		var newbul = instance_create_layer(x,y,"Instances",obj_emy_bul);
	
		if(!straight)
		{
			if(left) newbul.direction = 40+180;
			else	newbul.direction = -40;
		}
		else newbul.direction = -90;
	
		newbul.speed = 1;
	}
	if(timer == settimer-16)
	{
		var newbul = instance_create_layer(x,y,"Instances",obj_emy_bul);
	
		if(!straight)
		{

			if(left) newbul.direction = 60+180;
			else	newbul.direction = -60;
		}
		else newbul.direction = -90;
	
		newbul.speed = 1;
	}
	if(timer == settimer-24)
	{
		var newbul = instance_create_layer(x,y,"Instances",obj_emy_bul);
	
		if(!straight)
		{
			if(left) newbul.direction = 80+180;
			else	newbul.direction = -80;
		}
		else newbul.direction = -90;
	
		newbul.speed = 1;
	}
}

if(image_index == 1) //missile launcher
{
	
}


