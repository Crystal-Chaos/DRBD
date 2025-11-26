alpha += alphaChange;

if (alpha >= 1)
{
	alpha = 1;
	alphaChange = 0;
	callback();
}
else if (alpha <= 0)
{
	instance_destroy();
	callback();
}