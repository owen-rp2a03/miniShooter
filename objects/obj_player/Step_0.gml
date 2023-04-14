/// @description
////CONTROL////

global.axislh = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;
global.axislv = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

l = keyboard_check(ord("A"))		//left
	|| gamepad_button_check(0, gp_padl) //dpad
	|| (global.axislh < -.5); //nes controller
	
r = keyboard_check(ord("D"))		//right
	|| gamepad_button_check(0, gp_padr) //dpad
	|| (global.axislh > .5 ); //nes controller

u = keyboard_check(ord("W"))		//up
	|| gamepad_button_check(0, gp_padu) //dpad
	|| (global.axislv < -.5); //nes controller
	
d = keyboard_check(ord("S"))		//down
	|| gamepad_button_check(0, gp_padd) //dpad
	|| (global.axislv > .5); //nes controller


shot = keyboard_check(vk_space)		// shoot
	|| gamepad_button_check(0, gp_face2)
	|| gamepad_button_check(0, gp_face4);
	//|| gamepad_button_check(0, gp_face2); //nes controller

spdu = keyboard_check(ord("N"))		//speed up
	|| gamepad_button_check(0, gp_shoulderr)
	|| gamepad_button_check(0, gp_shoulderrb);
	//|| gamepad_button_check(0, gp_face1); //nes controller
	
spdd = keyboard_check(vk_lshift)		//speed down
	|| gamepad_button_check(0, gp_shoulderl)
	|| gamepad_button_check(0, gp_shoulderlb);
	//|| gamepad_button_check(0, gp_face4); //nes controller
	

// move if pressing direction
if(l || r || u || d)
{
	speed = int64(setspeed*10)/10;
	x = x;
	y = y;
	
}
else speed = 0;

if(r && !(u || d))		direction = 0 // left

if(r && u && !l)		direction = 45 // left up

if(u && !(l || r))		direction = 90 // up

if(l && u && !r)		direction = 135 // right up

if(l && !(u || d))		direction = 180 // right

if(l && d && !r)		direction = 225 // right down

if(d && !(l || r))		direction = 270 // down

if(r && d && !l)		direction = 315 // left down


// change speed control
if(spdd && !(spdd && spdu) && setspeed > .5) setspeed -= .025
if(spdu && !(spdd && spdu) && setspeed < 2) setspeed += .025


//shoot control
if(shot)
{
	shotdelay -= 1;
}

if(shotdelay <= 0)
{
	instance_create_layer(x,y-2,"Instances",obj_plr_bullet);
	shotdelay = 4;
}


// hurt variable for enemies to set to true
if(hurt) image_blend = #ff0000
else	image_blend = #ffffff;




//color for hitbox pixel
if(!hurt)
{
	hsvhue -= 2;

	if(hsvhue < 0) hsvhue = 255;
	hbox = make_color_hsv(hsvhue,128,255);
	
	iframe = 0 //set iframes to 0 now that it wont reset to 60 in the else
	
}
else
{
	hsvhue -= 4;

	if(hsvhue < 0) hsvhue = 255;
	hbox = make_color_hsv(hsvhue,192,255);
	
	if(iframe == 0) iframe = 60; //reset iframes for next hit
}

if(iframe > 1) iframe -= 1 else hurt = false; //countdown iframes and disable at end

if(iframe > 0)
{
	if(image_alpha <= .3) alpha_up = true;
	if(image_alpha >= 1) alpha_up = false;

	if(alpha_up) image_alpha += .2 else image_alpha -= .2 //flash alpha up/down
}
else if(image_alpha <= 1) image_alpha += .2;






