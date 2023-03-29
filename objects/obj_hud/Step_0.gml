/// @description 

//game elapsed time variables and formatting for draw event
t_frm += 1

t_mil = int64(t_frm*1.67) // convert frames to milisecond tenths

if(t_mil > 99) t_mil1 = "9"
else t_mil1 = string(int64(t_mil*.1));



if(t_frm = 60) //add frames to seconds
{
	t_frm = 0;
	t_sec += 1;
}


if(t_sec = 60) //add seconds to minutes
{
	t_sec = 0;
	t_min += 1;
}

if(t_sec < 10) t_sec1 = "0"+string(t_sec) // add zero for single digit
else t_sec1 = string(t_sec);

if(t_min < 10) t_min1 = "0"+string(t_min)
else t_min1 = string(t_min);


//decoration hsv vars

hsvhue1 -= hsvspeed
if(hsvhue1 < 0) hsvhue1 = 255;

hsvhue2 -= hsvspeed
if(hsvhue2 < 0) hsvhue2 = 255;

hsvhue3 -= hsvspeed
if(hsvhue3 < 0) hsvhue3 = 255;

hsvhue4 -= hsvspeed
if(hsvhue4 < 0) hsvhue4 = 255;

hsvhue5 -= hsvspeed
if(hsvhue5 < 0) hsvhue5 = 255;









































