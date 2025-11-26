var darknessLevel;

with (void_char_select)
{
	darknessLevel = lerp(0.6, 0.3, fadeFramesRemaining / fadeFramesDuration);

	if (characterProperties[currentCharacter].sprite == spr_cutscene_001_knife && isSelected)
	{
		darknessLevel = lerp(1, 0.3, fadeFramesRemaining / fadeFramesDuration);
	}
}

draw_set_alpha(darknessLevel);
draw_set_color(c_black);

draw_rectangle(-10, -10, 999, 999, false);

draw_set_alpha(1);
