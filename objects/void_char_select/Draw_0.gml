var slideOffset = (1 - slideFramesRemaining / slideFrameDuration) * slideVector * 2;
var slideTransitionAlpha = slideFramesRemaining == 0 ? 0 : sign(slideVector) * (1 - slideFramesRemaining / slideFrameDuration);


for (var numCharacter = 0; numCharacter < array_length(characterProperties); numCharacter += 1)
{
	var characterAlpha = fadeFramesRemaining / fadeFramesDuration - abs(numCharacter + slideTransitionAlpha - currentCharacter) * 0.4;
	var characterSprite = characterProperties[numCharacter].sprite;
	var characterWidth = sprite_get_width(characterProperties[numCharacter].sprite);
	var characterOffset = characterProperties[numCharacter].offset - characterProperties[currentCharacter].offset;
	var heartOffsetY = characterProperties[numCharacter].heartOffsetY;
	var heartOffsetX = variable_struct_exists(characterProperties[numCharacter], "heartOffsetX") ? characterProperties[numCharacter].heartOffsetX : 0;

	// Draw inner shadow
	var shadowAlpha = characterAlpha * (2.5 * characterAlpha - 1.5) * characterAlpha * 0.4;
	var scaleFactor = abs((sin(sineProgress / 16) / 4));
	draw_sprite_ext(
		characterSprite,
		isSelected ? 3 : 2,
		x + characterOffset * 2 - scaleFactor * 2 + slideOffset,
		y - scaleFactor * sprite_height / 2,
		2 + scaleFactor,
		2 + scaleFactor,
		0,
		(
			isSelected ?
			merge_colour(c_red, characterProperties[numCharacter].heartColor, 1 - characterAlpha) :
			c_white
		),
		isSelected && numCharacter == currentCharacter ? 1 - characterAlpha : shadowAlpha
	);

	// Draw outer shadow
	scaleFactor = abs((sin(sineProgress / 21) / 2));
	draw_sprite_ext(
		characterSprite,
		isSelected ? 3 : 2,
		x + characterOffset * 2 - scaleFactor + slideOffset,
		y - scaleFactor * sprite_height / 2,
		2 + scaleFactor,
		2 + scaleFactor,
		0,
		(
			isSelected ?
			merge_colour(c_red, characterProperties[numCharacter].heartColor, 1 - characterAlpha) :
			c_white
		),
		isSelected && numCharacter == currentCharacter ? 0.4 - characterAlpha : shadowAlpha
	);

	// Draw main sprite
	if (characterAlpha > 0.6 && (!isSelected || numCharacter != currentCharacter)) {
		// Transition between the two colors while sliding
		draw_sprite_ext(
			characterSprite,
			2,
			x + characterOffset * 2 + slideOffset,
			y,
			2,
			2,
			0,
			c_white,
			characterAlpha * (2.5 * characterAlpha - 1.5)
		);
		draw_sprite_ext(
			characterSprite,
			1,
			x + characterOffset * 2 + slideOffset,
			y,
			2,
			2,
			0,
			c_white,
			characterAlpha * (1 - (2.5 * characterAlpha - 1.5))
		);
	}
	else if (!isSelected || numCharacter != currentCharacter) {
		draw_sprite_ext(
			characterSprite,
			1,
			x + characterOffset * 2 + slideOffset,
			y,
			2,
			2,
			0,
			c_white,
			characterAlpha
		);
	}
	if (isSelected && numCharacter == currentCharacter)
	{
		draw_sprite_ext(
			characterSprite,
			2,
			x + characterOffset * 2 + slideOffset,
			y,
			2,
			2,
			0,
			c_white,
			characterAlpha
		);
		draw_sprite_ext(
			characterSprite,
			3,
			x + characterOffset * 2 + slideOffset,
			y,
			2,
			2,
			0,
			characterProperties[numCharacter].heartColor,
			1 - characterAlpha
		);
	}

	// Draw heart
	if (isSelected && numCharacter == currentCharacter && characterProperties[numCharacter].heart != noone)
	{
		draw_sprite_ext(
			characterProperties[numCharacter].heart,
			0,
			x + (characterOffset + heartOffsetX) * 2 + slideOffset + 2,
			y + (sprite_height - heartOffsetY) * 2 + characterPadding,
			1,
			1,
			0,
			c_white,
			1 - characterAlpha
		);
	}
}

