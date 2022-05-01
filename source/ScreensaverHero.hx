package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class ScreensaverHero extends FlxSprite
{
	static inline var MIN_SPEED:Float = -200;
	static inline var MAX_SPEED:Float = 200;

	var randomXSpeed:Float = 0;
	var randomYSpeed:Float = 0;

	public function new()
	{
		super(x, y);
		makeGraphic(25, 25, FlxColor.WHITE, false, "ScreenSaverHero");
		randomizeMovement();
	}

	private function randomizeMovement()
	{
		randomXSpeed = FlxG.random.float(MIN_SPEED, MAX_SPEED);
		randomYSpeed = FlxG.random.float(MIN_SPEED, MAX_SPEED);
		velocity.set(randomXSpeed, randomYSpeed);
	}

	private function bounceOffWalls()
	{
		if (x < 0)
		{
			velocity.x = velocity.x * -1;
		}

		if (x > FlxG.width - width)
		{
			velocity.x = velocity.x * -1;
		}

		if (y < 0)
		{
			velocity.y = velocity.y * -1;
		}

		if (y > FlxG.height - height)
		{
			velocity.y = velocity.y * -1;
		}
	}

	override public function update(elapsed:Float)
	{
		if (x <= (FlxG.width / 2) && y <= (FlxG.height / 2))
		{
			color = FlxColor.BLUE;
		}

		if (x <= (FlxG.width / 2) && y >= (FlxG.height / 2))
		{
			color = FlxColor.RED;
		}

		if (x >= (FlxG.width / 2) && y >= (FlxG.height / 2))
		{
			color = FlxColor.GREEN;
		}

		if (x >= (FlxG.width / 2) && y <= (FlxG.height / 2))
		{
			color = FlxColor.YELLOW;
		}

		// if you Press and release Space key, it re-randomizes movement
		if (FlxG.keys.justReleased.SPACE)
		{
			randomizeMovement();
		}

		bounceOffWalls();

		super.update(elapsed);
	}
}
