alphaChange = 0;
alpha = 0.01;
color = c_black;
callback = function() {};

fadeToColor = function(newColor, fadePerFrameRate = 0.02, newCallback = function() {}) {
	color = newColor;
	alphaChange = fadePerFrameRate;
	callback = newCallback;
};

fadeFromColor = function(newColor, fadePerFrameRate = 0.02, newCallback = function() {}) {
	color = newColor;
	alphaChange -= fadePerFrameRate;
	callback = newCallback;
};