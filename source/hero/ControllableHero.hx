package hero;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class ControllableHero extends FlxSprite
{
	public function new()
	{
		super(x, y);
		makeGraphic(30, 30, FlxColor.WHITE, false, "ControllableHero");
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.LEFT)
		{
			velocity.x = -100;
			velocity.y = 0;
		}

		if (FlxG.keys.pressed.RIGHT)
		{
			velocity.x = 100;
			velocity.y = 0;
		}

		if (FlxG.keys.pressed.UP)
		{
			velocity.y = -100;
			velocity.x = 0;
		}

		if (FlxG.keys.pressed.DOWN)
		{
			velocity.y = 100;
			velocity.x = 0;
		}

		if (FlxG.keys.pressed.UP == false && FlxG.keys.pressed.DOWN == false && FlxG.keys.pressed.LEFT == false && FlxG.keys.pressed.RIGHT == false)
		{
			velocity.y = 0;
			velocity.x = 0;
		}

		super.update(elapsed);
	}
}
