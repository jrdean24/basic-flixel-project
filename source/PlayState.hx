package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import hero.ControllableHero;
import hero.Hero;
import hero.ScreensaverHero;

class PlayState extends FlxState
{
	var controllableHero:ControllableHero;

	override public function create()
	{
		super.create();

		for (i in 0...100)
		{
			add(new ScreensaverHero());
		}

		var controllableHero = new ControllableHero();
		add(controllableHero);

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
