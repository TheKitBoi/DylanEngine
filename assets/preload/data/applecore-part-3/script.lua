function onUpdate(elapsed)
  if curStep >= 0 then
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/60)

    noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0+20*math.sin((currentBeat+4*0.25)*math.pi), 0.5, InOutBounce)
    noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1+20*math.sin((currentBeat+5*0.25)*math.pi), 0.5, InOutBounce)
    noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2+20*math.sin((currentBeat+6*0.25)*math.pi), 0.5, InOutBounce)
    noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3+20*math.sin((currentBeat+7*0.25)*math.pi), 0.5, InOutBounce)
  end
end