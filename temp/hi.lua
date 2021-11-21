function onCreate()
	-- background shit
	makeLuaSprite('hi', 'hi', -600, -300);
	setScrollFactor('hi', 0.9, 0.9);

	addLuaSprite('hi', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end