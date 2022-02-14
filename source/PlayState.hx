package;

import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var hero:FlxSprite;

	override public function create()
	{
		super.create();

		hero = new FlxSprite(300, 300);
		add(hero);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
