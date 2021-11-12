local angleshit = 1;
local anglevar = 1;
function onCreate()
	makeLuaSprite('bg',-343.15, -295.45)
	addLuaSprite('bg',false)
	
end

function onBeatHit()
	if curBeat < 388 then
		triggerEvent('Add Camera Zoom', 0.004,0.005)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.0002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.0001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.0002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.0001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
		
end

function onStepHit()
	if curBeat < 388 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.0002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.0002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.0002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.0002, 'sineIn')
		end
	end
end