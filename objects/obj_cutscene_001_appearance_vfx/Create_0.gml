m = sprite_height / 2;
tmax = sprite_height / 2;

t = 0;
momentum = 0;

x = 160
y = 120;

setMode = function(isEntering) {
	audio_play_sound(sfx_heart_appearance, 0, false);
	t = isEntering ? -10 : 2;
	momentum = isEntering ? 0.5 : -0.5;

	if (!isEntering)
	{
		instance_destroy();
	}
};

setMode(true);
