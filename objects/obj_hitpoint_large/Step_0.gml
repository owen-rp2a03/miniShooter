/// @description 

if(instance_number(obj_bos_hitpoint) == 0) {
	if(hsvsat < 1) 
	{
		hsvsat += .01 
	}
	
	else hsvsat = 1;
}
else hsvsat = 0;


image_blend = make_color_hsv(hsvhue,hsvsat,hsvval);

if(hsvval > 255) cycle = false;
if(hsvval < 64) cycle = true;

//slow/fast flash 
if(image_alpha = 1)
{
	if(cycle) hsvval += hsvspeed else cycle = false;
	if(!cycle) hsvval -= hsvspeed else cycle = true;
}
else hsvval = 255;

//hsvsat = 64+(sethealth-damage)*(192/sethealth);




if(damage < 1) instance_destroy(self);





