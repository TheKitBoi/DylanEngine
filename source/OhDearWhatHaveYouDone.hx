import flixel.FlxSprite;
import flixel.FlxState;
import flixel.*;
import flixel.util.FlxTimer;
import flash.system.System;
import sys.io.File;
import sys.io.Process;
import flixel.util.FlxColor;

class OhDearWhatHaveYouDone extends MusicBeatState
{
    var sus:FlxSprite;

    public function new()
    {
        super();
    }
    override public function create()
    {
        super.create();
        FlxG.sound.playMusic(Paths.music('dooDooFeces'),1,true);
        sus = new FlxSprite(0, 0);
        sus.loadGraphic(Paths.image("dylan/cheating"));
        sus.setGraphicSize(FlxG.width, FlxG.height);
        add(sus);
    }

    override public function update(elapsed:Float):Void 
    {
        super.update(elapsed);
            
        if (FlxG.keys.pressed.ENTER)
        {
            closeGame();
        }
            
    }
    public function closeGame(time:FlxTimer = null)
        {
            System.exit(0);
        }
}

