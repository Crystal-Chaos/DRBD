event_user(15);

inputDisabled = false;
isSelected = false;
fadeDirection = 1;
fadeFramesRemaining = 0;
fadeFramesDuration = 20;

sineProgress = 0;

slideFramesRemaining = 0;
slideFrameDuration = 7;
slideVector = 0;

x = 160;
y = 80;
initialX = x;
initialY = y;
characterPadding = 5;

characterProperties = [
	{
		sprite: spr_cutscene_001_kris,
		heart: spr_heart_blurred,
		heartOffsetY: 23,
		heartOffsetX: -0.5,
		heartColor: c_red,
	},
	{
		sprite: spr_cutscene_001_felix,
		heart: noone,
		heartOffsetY: 21,
		heartOffsetX: -0.5,
		heartColor: c_red,
	},
	{
		sprite: spr_cutscene_001_emily,
		heart: spr_emily_soul,
		heartOffsetY: 20,
		heartOffsetX: -0.5,
		heartColor: c_aqua,
	},
	{
		sprite: spr_cutscene_001_lukas,
		heart: spr_monster_soul,
		heartOffsetY: 21,
		heartOffsetX: -0.5,
		heartColor: c_white,
	},
	{
		sprite: spr_cutscene_001_sirra,
		heart: spr_monster_soul,
		heartOffsetY: 27,
		heartOffsetX: -1,
		heartColor: c_white,
	},
	{
		sprite: spr_cutscene_001_hugh,
		heart: spr_hugh_soul,
		heartOffsetY: 28,
		heartOffsetX: -0.5,
		heartColor: #B38054,
	},
	{
		sprite: spr_cutscene_001_scuta,
		heart: spr_heart_blurred,
		heartOffsetY: 24,
		heartOffsetX: 0.5,
		heartColor: c_red,
	},
	{
		sprite: spr_cutscene_001_max,
		heart: noone,
		heartOffsetY: 23,
		heartOffsetX: -0.5,
		heartColor: c_red,
	},
	{
		sprite: spr_cutscene_001_ryan,
		heart: spr_heart_blurred,
		heartOffsetY: 19,
		heartOffsetX: -0.5,
		heartColor: c_red,
	},
	{
		sprite: spr_cutscene_001_eboni,
		heart: spr_heart_blurred,
		heartOffsetY: 20,
		heartOffsetX: -0.5,
		heartColor: c_red,
	},
	{
		sprite: spr_cutscene_001_knife,
		heart: spr_heart_blurred,
		heartOffsetY: 21,
		heartOffsetX: -0.5,
		heartColor: c_dkgray,
	},
	{
		sprite: spr_cutscene_001_rqz,
		heart: spr_heart_blurred,
		heartOffsetY: 19,
		heartOffsetX: -0.5,
		heartColor: c_red,
	},
	{
		sprite: spr_cutscene_001_malin,
		heart: spr_heart_blurred,
		heartOffsetY: 18,
		heartOffsetX: 0.5,
		heartColor: c_red,
	},
	{
		sprite: spr_cutscene_001_tuesday,
		heart: spr_heart_blurred,
		heartOffsetY: 21,
		heartOffsetX: -0.5,
		heartColor: c_red,
	},
];
currentCharacter = 0;
calculateCharacterOffsets();
