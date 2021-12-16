package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.text.FlxTypeText;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxSpriteGroup;
import flixel.input.FlxKeyManager;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxBar;
import flixel.util.FlxCollision;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

using StringTools;

class BackgroundSprite extends FlxSpriteGroup
{
	var background:FlxSprite;
	public var defaultZoom:Float = 1;
//	var movingElements:FlxTypedGroup<FlxSprite>;
	
	//Week 5
	var santa:FlxSprite;
	var upperBoppers:FlxSprite;
	var bottomBoppers:FlxSprite;
	var floorthing:FlxSprite;
	var thingy:FlxSprite;
	var backgthing:FlxSprite;
	// Week MUGEN
	public var wallcolors:Array<String> = [
		'#762e80',
		'#1d1870',
		'#96140e',
		'#8f8b1f',
		'#227d4c',
		'#551a8b',

	];
	public var curColor = 0;
	public var wall:FlxSprite;
	public var frontDudes:FlxSprite;
	var fire:FlxSprite;
	var truck:FlxSprite;
	public function new(?DaBackground:String)
	{
		super();
		trace(DaBackground);
		//dirty fix for some weirdass issue i was havin
		if (DaBackground == null){ 	//you probs don't want to remove this
			defaultZoom = 0.9;
			background = new FlxSprite(-600, -200).loadGraphic(Paths.image('stageback', 'shared'));
			background.antialiasing = FlxG.save.data.antialasing;
			background.scrollFactor.set(0.9, 0.9);
			background.active = false;
			add(background);

			var stageFront:FlxSprite = new FlxSprite(-650, 600).loadGraphic(Paths.image('stagefront', 'shared'));
			stageFront.setGraphicSize(Std.int(stageFront.width * 1.1));
			stageFront.updateHitbox();
			stageFront.antialiasing = FlxG.save.data.antialasing;
			stageFront.scrollFactor.set(0.9, 0.9);
			stageFront.active = false;
			add(stageFront);

			var stageCurtains:FlxSprite = new FlxSprite(-500, -300).loadGraphic(Paths.image('stagecurtains', 'shared'));
			stageCurtains.setGraphicSize(Std.int(stageCurtains.width * 0.9));
			stageCurtains.updateHitbox();
			stageCurtains.antialiasing = FlxG.save.data.antialasing;
			stageCurtains.scrollFactor.set(1.3, 1.3);
			stageCurtains.active = false;

			add(stageCurtains);
		}
		else{
			switch(DaBackground){
				case 'stage': 
					defaultZoom = 0.9;
					background = new FlxSprite(-600, -200).loadGraphic(Paths.image('stageback', 'shared'));
					background.antialiasing = FlxG.save.data.antialasing;
					background.scrollFactor.set(0.9, 0.9);
					background.active = false;
					add(background);
	
					var stageFront:FlxSprite = new FlxSprite(-650, 600).loadGraphic(Paths.image('stagefront', 'shared'));
					stageFront.setGraphicSize(Std.int(stageFront.width * 1.1));
					stageFront.updateHitbox();
					stageFront.antialiasing = FlxG.save.data.antialasing;
					stageFront.scrollFactor.set(0.9, 0.9);
					stageFront.active = false;
					add(stageFront);
	
					var stageCurtains:FlxSprite = new FlxSprite(-500, -300).loadGraphic(Paths.image('stagecurtains', 'shared'));
					stageCurtains.setGraphicSize(Std.int(stageCurtains.width * 0.9));
					stageCurtains.updateHitbox();
					stageCurtains.antialiasing = FlxG.save.data.antialasing;
					stageCurtains.scrollFactor.set(1.3, 1.3);
					stageCurtains.active = false;
	
					add(stageCurtains);
				}
			}

	override function update(elapsed:Float)
	{

		super.update(elapsed);
	}
	
	public function bop(){
		switch(PlayState.SONG.stage){

		}
	}
	public function addFrontLayer(){
		switch(PlayState.SONG.stage){

			}
		}
	public function switchbg(idk:Bool){
		switch(PlayState.SONG.stage){

		}
	}
}
