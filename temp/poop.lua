function onCreate()
	-- background shit
	makeLuaSprite('poop', 'poop', -600, -300);
	setScrollFactor('poop', 0.9, 0.9);
	makeAnimatedLuaSprite('bottomBop', 'characters/minion');
	addAnimationByPrefix('bottomBop', 'walkiez', 'poip', 24, false)
	setLuaSpriteScrollFactor('bottomBop', 0.9, 0.9);
	scaleObject('bottomBop', 1, 1);
	addLuaSprite('bottomBop', false);
	addLuaSprite('poop', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

