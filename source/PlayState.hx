package;

import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import hero.Hero;

class PlayState extends FlxState
{
	var hero:Hero;

	var screensaverHeroes:FlxTypedGroup<ScreensaverHero>;

	override public function create()
	{
		super.create();

		var hero = new Hero(300, 300);
		add(hero);

		var screensaverHero1 = new ScreensaverHero();
		add(screensaverHero1);

		screensaverHeroes = new FlxTypedGroup<ScreensaverHero>();
		for (i in 0...65) {

			screensaverHeroes.add(new ScreensaverHero());
		}
		add(screensaverHeroes);
		
		var text = new flixel.text.FlxText(75, 200, 0, " Hello World", 64);
		text.setFormat(null, 64, 0x770088, CENTER, OUTLINE, 0xFF00FF00, true);
		text.borderSize = 5;
		add(text);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
