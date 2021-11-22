local xx = -90;
local yy = -80;
local xx2 = 952.9;
local yy2 = 350;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
local angleshit = 1;
local anglevar = 1;

function onUpdate(elapsed)
    if curStep >= 0 then
      songPos = getSongPosition()
      local currentBeat = (songPos/1000)*(bpm/60)
      doTweenY(dadTweenY, 'dad', 80-20*math.sin((currentBeat*0.25)*math.pi),0.1)
    end

          if followchars == true then
          if mustHitSection == false then
              setProperty('defaultCamZoom',1.2)
              if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                  triggerEvent('Camera Follow Pos',xx-ofs,yy)
              end
              if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                  triggerEvent('Camera Follow Pos',xx+ofs,yy)
              end
              if getProperty('dad.animation.curAnim.name') == 'singUP' then
                  triggerEvent('Camera Follow Pos',xx,yy-ofs)
              end
              if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                  triggerEvent('Camera Follow Pos',xx,yy+ofs)
              end
              if getProperty('dad.animation.curAnim.name') == 'idle' then
                  triggerEvent('Camera Follow Pos',xx,yy)
              end
          else
  
              setProperty('defaultCamZoom',0.9)
              if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                  triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
              end
              if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                  triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
              end
              if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                  triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
              end
              if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                  triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
              end
              if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                  triggerEvent('Camera Follow Pos',xx2,yy2)
              end
              if getProperty('dad.animation.curAnim.name') == 'idle' then
                  triggerEvent('Camera Follow Pos',xx2,yy2)
              end
          end
      else
          triggerEvent('Camera Follow Pos','','')
      end

  end


  function onBeatHit()
    triggerEvent('Add Camera Zoom', 0.04,0.05)
  
    if curBeat % 2 == 0 then
      angleshit = anglevar;
    else
      angleshit = -anglevar;
    end
    setProperty('camHUD.angle',angleshit*3)
    setProperty('camGame.angle',angleshit*3)
    doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
    doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
    doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
    doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
      
  end
  
  function onStepHit()
    doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
    doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
  end