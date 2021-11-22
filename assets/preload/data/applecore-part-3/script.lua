local xx = -90;
local yy = -80;
local xx2 = 952.9;
local yy2 = 350;
local ofs = 50;
local followchars = true;
local keepScroll = false
local del = 0;
local del2 = 0;
local angleshit = 1;
local anglevar = 1;
local value2 = 360;
local value1 = 1;

function onUpdate(elapsed)
    if curStep >= 0 then
      songPos = getSongPosition()
      local currentBeat = (songPos/1000)*(bpm/60)
      doTweenY(dadTweenY, 'dad', 80-20*math.sin((currentBeat*0.25)*math.pi),0.1)
      noteTweenAngle('A',4 , value2 , value1, linear);
      noteTweenAngle('B',5 , value2 , value1, linear);
      noteTweenAngle('C',6 , value2 , value1, linear);
      noteTweenAngle('D',7 , value2 , value1, linear);
      noteTweenAngle('E',0 , value2 , value1, linear);
      noteTweenAngle('F',1 , value2 , value1, linear);
      noteTweenAngle('G',2 , value2 , value1, linear);
      noteTweenAngle('H',3 , value2 , value1, linear);
    end

    if curBeat>1 then
		noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0+10*math.sin((currentBeat+4*0.25)*math.pi), 0.3, circInOut)
		noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1+10*math.sin((currentBeat+5*0.25)*math.pi), 0.3, circInOut)
		noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2+10*math.sin((currentBeat+6*0.25)*math.pi), 0.3, circInOut)
		noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3+10*math.sin((currentBeat+7*0.25)*math.pi), 0.3, circInOut)
        
	end

          if followchars == true then
          if mustHitSection == false then
              setProperty('defaultCamZoom',0.7)
          else
              setProperty('defaultCamZoom',0.9)
          end
      end

  end



function onCreate()
    keepScroll = getPropertyFromClass('ClientPrefs', 'middleScroll');
    setPropertyFromClass('ClientPrefs', 'middleScroll', true);
end

function onDestroy()
    if not keepScroll then
        setPropertyFromClass('ClientPrefs', 'middleScroll', false);
    end
end

