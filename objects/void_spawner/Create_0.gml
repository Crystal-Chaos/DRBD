spawnInterval = 40;
spawnDepth = depth + 5;

spawnWave = function() {
	 instance_create_depth(
		x,
		y,
		depth,
		void_wave
	).depth = spawnDepth;

	spawnDepth = (spawnDepth + 1) % 60000;
};

spawnTimer = time_source_create(
	time_source_game,
	spawnInterval,
	time_source_units_frames,
	spawnWave,
	[],
	-1
);

time_source_start(spawnTimer);