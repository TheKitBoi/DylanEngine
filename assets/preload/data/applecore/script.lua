

function onUpdate(elapsed)
    local songPos = getSongPosition()

    function onMoveCamera(focus)
        if focus == 'boyfriend' then
            -- called when the camera focus on boyfriend
        elseif focus == 'dad' then
            setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.sin(currentBeat) * 0.6))
        end
    end
    function goodNoteHit(id, direction, noteType, isSustainNote)
        cameraSetTarget('boyfriend')
    end
    if curStep >= 0 then
      local currentBeat = (songPos/1000)*(bpm/60)
      doTweenY(dadTweenY, 'dad', 80-20*math.sin((currentBeat*0.25)*math.pi),0.1)
    end

    if curStep >= 900 and curStep <= 2974 then
        local currentBeat = (songPos/1000)*(bpm/60)
        doTweenY(dadTweenY, 'gf', 80-20*math.sin((currentBeat*0.25)*math.pi),0.1)
    end

    if curStep >= 2974 then
        local currentBeat = (songPos/1000)*(bpm/60)
        function opponentNoteHit(id, direction, noteType, isSustainNote)
            cameraSetTarget('dad')
            doTweenZoom('camerazoom','camGame',0.6,0.15,'quartInOut')
        end
        noteTweenX(defaultPlayerStrumX0, 4, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 0) * 300), 0.001)
        noteTweenX(defaultPlayerStrumX1, 5, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 1) * 300), 0.001)
        noteTweenX(defaultPlayerStrumX2, 6, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 2) * 300), 0.001)
        noteTweenX(defaultPlayerStrumX3, 7, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 3) * 300), 0.001)
        noteTweenY('defaultPlayerStrumY0', 4, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 0) * 300), 0.001)
        noteTweenY('defaultPlayerStrumY1', 5, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 1) * 300), 0.001)
        noteTweenY('defaultPlayerStrumY2', 6, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 2) * 300), 0.001)
        noteTweenY('defaultPlayerStrumY3', 7, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 3) * 300), 0.001)
        noteTweenX('fake1', 0, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (4) * 2) * 300), 0.001)
        noteTweenX('fake2', 1, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (5) * 2) * 300), 0.001)
        noteTweenX('fake3', 2, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (6) * 2) * 300), 0.001)
        noteTweenX('fake4', 3, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (7) * 2) * 300), 0.001)
        noteTweenY('defaultFPlayerStrumY0', 0, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (4) * 2) * 300), 0.001)
        noteTweenY('defaultFPlayerStrumY1', 1, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (5) * 2) * 300), 0.001)
        noteTweenY('defaultFPlayerStrumY2', 2, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (6) * 2) * 300), 0.001)
        noteTweenY('defaultFPlayerStrumY3', 3, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (7) * 2) * 300), 0.001)
        setPropertyFromClass('ClientPrefs', 'ghostTapping', false)
        setPropertyFromClass('ClientPrefs', 'downScroll', true)
        setPropertyFromClass('ClientPrefs', 'middleScroll', false)
    end
end

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D'); --Change texture
		end
	end
end    

function onDestroy()
	if not keepScroll then
        setPropertyFromClass('ClientPrefs', 'ghostTapping', true)
        setPropertyFromClass('ClientPrefs', 'downScroll', false)
        setPropertyFromClass('ClientPrefs', 'middleScroll', false)
    end
end    