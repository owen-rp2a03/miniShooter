/// @description 

shading = (image_xscale*image_yscale)/2;

image_blend = make_color_hsv(0,0,(shading)*255);

image_yscale = image_xscale;


if(doalarm == 0 && image_xscale < 1) // rise and move to position
{
	image_xscale += .0015;
	y -= .25;
}
else
{
	if(doalarm == 0)
	{
		y = round(y);
		image_xscale = 1;
		
		alarm[0] = 80;
		
		doalarm = 0.1;
	}
}

if(doalarm == 1) // move into foreground
{
	if!(image_xscale == 2) image_xscale += .05;
	else image_xscale = 2
}

