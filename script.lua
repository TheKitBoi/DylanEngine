--[[

function onUpdate(elapsed)
    if curStep >= 0 then
      songPos = getSongPosition()
      local currentBeat = (songPos/1000)*(bpm/60)
      doTweenY(bfTweenY, 'dylank', 300-10*math.sin((currentBeat*0.05)*math.pi),0.01)
    end
  end

--]]