/// @description 

shading = (image_xscale*image_yscale)/2;

image_blend = make_color_hsv(0,0,(shading)*255);

if(!seq)
{
	image_yscale = image_xscale;


	if(step == 0 && image_xscale < 1) // rise and move to position
	{
		image_xscale += .0015;
		y -= .25;
	}
	else
	{
		if(step == 0)
		{
			y = round(y);
			image_xscale = 1;
		
			nextstep(80);
		
		}
	}

	if(step == 1) // move into foreground
	{
		if!(image_xscale == 2) image_xscale += .05;
		else 
		{
			image_xscale = 2;
		
			nextstep(30);
		
		}
	}

	if(step == 2)
	{
		layer_sequence_create("boss",0,0,seq_bos0);
		nextstep(1);
	}
	
	if(step == 3) instance_destroy(self);
}

