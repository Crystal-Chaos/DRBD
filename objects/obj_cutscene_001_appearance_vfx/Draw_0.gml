if (t <= 0)
{
    var xs = max(0, t / 10 + 1);

	draw_sprite_part_ext(
		sprite_index,
		0,
		0,
		m,
		sprite_width,
		1,
		x - ((sprite_width / 2) * xs),
		y + m - 400,
		xs,
		800,
		c_white,
		1
	);
}
else if (t > 0 && t < m)
{
    draw_sprite_part(
		sprite_index,
		0,
		0,
		m - t,
		sprite_width,
		2 * t + 1,
		x - sprite_width / 2,
		y - t + m
	);
    draw_sprite_part_ext(
		sprite_index,
		0,
		0,
		m - t - 1,
		sprite_width,
		1,
		x - sprite_width / 2,
		y - 400 - t + m,
		1,
		400,
		c_white,
		1
	);
    draw_sprite_part_ext(
		sprite_index,
		0,
		0,
		m + t,
		sprite_width,
		1,
		x - sprite_width / 2,
		y + t + m,
		1,
		400,
		c_white,
		1
	);
}
else if (t >= m)
{
	draw_sprite(
		sprite_index,
		0,
		x,
		y
	);
}

if (momentum > 0)
{
	if (t < tmax + 2)
	{
		t += momentum;
	}
}
else if (momentum < 0)
{
	t += momentum;
}
