

if (!(instance_place(xprevious, y, obj_collision) > 0))
{
	x = xprevious;
	y = y;
}
else
{
	if (!(instance_place(x, yprevious, noone) > 0))
	{
		x = x;
		y = yprevious;
	}
	else
	{
		x = xprevious;
		y = yprevious;
	}
}