/// @description 

draw_self();
image_index = type-1;

hsvhue -= 4;

if(hsvhue < 0) hsvhue = 255;
image_blend = make_color_hsv(hsvhue,128,255);




