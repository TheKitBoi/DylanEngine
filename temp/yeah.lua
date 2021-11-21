function onUpdate(elapsed)
	-- background shit
	makeLuaSprite('yeah', 'yeah', -600, -300);
	setScrollFactor('yeah', 0.9, 0.9);
    setPropertyFromGroup('opponentStrums', 0, 'x', -5000);
    setPropertyFromGroup('opponentStrums', 1, 'x', -5000);
    setPropertyFromGroup('opponentStrums', 2, 'x', -5000);
    setPropertyFromGroup('opponentStrums', 3, 'x', -5000);

    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
    setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
    setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
    setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 320);
	
	addLuaSprite('yeah', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
