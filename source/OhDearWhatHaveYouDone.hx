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
        sus.loadGraphic(Paths.image("dylan/cheated"));
        add(sus);
        new FlxTimer().start(0.6, closeGame);
    }
    public function closeGame(time:FlxTimer = null)
    {
        System.exit(0);
    }
}