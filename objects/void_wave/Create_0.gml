sineProgress = 0;
alpha = 0.2;
xStretch = 1;
yStretch = 1;
stretchSpeed = 0.005;
fadeOutTransparency = 0;
fadeInTransparency = -0.2;


drawDepth = function(flipX, flipY)
{
	var finalAlpha = ((0.2 + alpha) - fadeOutTransparency) + fadeInTransparency;
	var xStretchDirection = flipX ? -1 : 1;
	var yStretchDirection = flipY ? -1 : 1;

    draw_sprite_ext(
		spr_void_image_depth,
		0,
		160,
		120,
		(xStretch + 1) * xStretchDirection,
		(yStretch + 1) * yStretchDirection,
		0,
		image_blend,
		finalAlpha
	);
};