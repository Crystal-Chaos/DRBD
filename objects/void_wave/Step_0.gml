sineProgress += 1;
alpha = sin((sineProgress / 34)) * 0.2;

yStretch += stretchSpeed;
xStretch += stretchSpeed;

if (fadeInTransparency < 0)
{
	fadeInTransparency += 0.01;
}

if (yStretch > 2)
{
	fadeOutTransparency += 0.01;

	if (fadeOutTransparency >= 0.5)
	{
		instance_destroy();
	}
}