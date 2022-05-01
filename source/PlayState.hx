package;

import Wall;
import flixel.FlxBasic;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import hero.ControllableHero;
import hero.ScreensaverHero;

class PlayState extends FlxState
{
	var controllableHero:ControllableHero;
	var walls:FlxTypedGroup<Wall>;
	var screensaverHeroes:FlxTypedGroup<ScreensaverHero>;
	var totalScore:Int = 0;

	override public function create()
	{
		super.create();

		screensaverHeroes = new FlxTypedGroup<ScreensaverHero>();
		for (i in 0...30)
		{
			screensaverHeroes.add(new ScreensaverHero(300, 50));
		}
		add(screensaverHeroes);

		var controllableHero = new ControllableHero();
		add(controllableHero);

		walls = new FlxTypedGroup<Wall>();
		walls.add(new Wall(100, 100));
		walls.add(new Wall(200, 100));
		walls.add(new Wall(300, 100));
		walls.add(new Wall(400, 100));
		walls.add(new Wall(500, 100));
		add(walls);

		var text = new flixel.text.FlxText(75, 200, 0, " Hello World", 64);
		text.setFormat(null, 64, 0x770088, CENTER, OUTLINE, 0xFF00FF00, true);
		text.borderSize = 5;
		add(text);
	}

	private function AddScore(obj1:flixel.FlxBasic, obj2:flixel.FlxBasic)
	{
		obj1.kill();
		totalScore += 1;
		var score = new flixel.text.FlxText(0, 0, 0, "Score: " + totalScore, 12, true);
		add(score);
	}

	override public function update(elapsed:Float)
	{
		// FlxG.overlap(screensaverHeroes, controllableHero, AddScore(screensaverHeroes, controllableHero));
		// couldnt figure out how to make this part work. ^
		FlxG.collide(controllableHero, walls);

		super.update(elapsed);
	}
}
