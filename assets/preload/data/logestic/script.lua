

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

end

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D'); --Change texture
		end
	end
end    