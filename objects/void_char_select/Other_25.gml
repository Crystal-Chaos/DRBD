calculateCharacterOffsets = function() {
// Add each character's offset
var characterOffsetAccumulator = 0;
	for (var characterNum = 0; characterNum < array_length(characterProperties); characterNum += 1)
	{
		var properties = characterProperties[characterNum];
		var characterWidth = sprite_get_width(properties.sprite);


		properties.offset = characterOffsetAccumulator;
		properties.width = sprite_get_width(properties.sprite)

		if (characterNum == array_length(characterProperties) - 1)
		{
			break;
		}

		characterOffsetAccumulator += (
			characterWidth / 2 + sprite_get_width(characterProperties[characterNum + 1].sprite) / 2 + characterPadding
		);
	}
};
