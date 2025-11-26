sineProgress += 0.7
x = initialX + sin((sineProgress / 24));
y = initialY + cos((sineProgress / 30));

fadeFramesRemaining = clamp(fadeFramesRemaining + fadeDirection, 0, fadeFramesDuration);
if (fadeFramesRemaining >= fadeFramesDuration)
{
	fadeFramesRemaining = fadeFramesDuration;
	isSelected = false;
}

if (slideFramesRemaining > 0)
{
	slideFramesRemaining -= 1;

	if (slideFramesRemaining == 0)
	{
		currentCharacter -= sign(slideVector);
		slideVector = 0;
	}
}

if (inputDisabled)
{
	return;
}

if (slideFramesRemaining <= 0 && !isSelected)
{
	if (InputPressed(INPUT_VERB.SELECT))
	{
		isSelected = true;
		fadeDirection = -0.5;
		return;
	}

	var selectionChange = InputPressed(INPUT_VERB.RIGHT) - InputPressed(INPUT_VERB.LEFT);
	var newCharacter = clamp(
		currentCharacter + selectionChange,
		0,
		array_length(characterProperties) - 1
	);

	if (newCharacter != currentCharacter)
	{
		slideFramesRemaining = slideFrameDuration;
		slideVector = (
			sprite_get_width(characterProperties[currentCharacter].sprite) / 2 +
			sprite_get_width(characterProperties[newCharacter].sprite) / 2 +
			characterPadding
		) * -sign(selectionChange);
	}
}
//TODO: Remove. The logic below will be triggered by the cutscene, not by user input
else
{
	if (isSelected && InputPressed(INPUT_VERB.SELECT))
	{
		if (characterProperties[currentCharacter].sprite == spr_cutscene_001_hugh)
		{
			inputDisabled = true;

			var transition = instance_create_depth(0, 0, depth, obj_void_solid_transition);
			transition.fadeToColor(c_black, 0.03, function() {
				if (currentCharacter >= array_length(characterProperties))
				{
					currentCharacter = array_length(characterProperties) - 1;
				}

				fadeDirection = 30;

				array_delete(characterProperties, currentCharacter, 1);
				calculateCharacterOffsets();

				obj_void_solid_transition.fadeFromColor(c_black, 0.05, function() {
					inputDisabled = false;
				});
			});
		}

		return;
	}
	if (InputPressed(INPUT_VERB.CANCEL))
	{
		fadeDirection = 0.5;
	}
}
