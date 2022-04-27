package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class ScreensaverHero extends FlxSprite
{
	static inline var MAX_SPEED:Float = 200;
	static inline var MIN_SPEED:Float = -200;

	var randomX:Float = 0;
	var randomY:Float = 0;

	public function new()
	{
		super(x, y);
		makeGraphic(25, 25, FlxColor.WHITE, false, "ScreenSaverHero");
		randomizeMovement();
	}

	private function randomizeMovement()
	{
		randomX = FlxG.random.float(MIN_SPEED, MAX_SPEED);
		randomY = FlxG.random.float(MIN_SPEED, MAX_SPEED);
		velocity.set(randomX, randomY);
	}

	private function bounceOffEdge()
	{
		if (x < 0) {
			velocity.x = velocity.x * -1;
		}

		if (x > FlxG.width - width) {
			velocity.x = velocity.x * -1;
		}

		if (y < 0) {
			velocity.y = velocity.y * -1;
		}

		if (y > FlxG.height - height) {
			velocity.y = velocity.y * -1;
		}
	}

	override public function update(elapsed:Float)
	{
		if (this.x > 250 && this.y > 250)
		{
			this.color = FlxColor.GREEN;
		}
		else if (this.x > 250 && this.y < 250)
		{
			this.color = 0xFFFF0000;
		}
		else if (this.x < 250 && this.y < 250)
		{
			this.color = FlxColor.YELLOW;
		}
		else if (this.x < 250 && this.y > 250)
		{
			this.color = FlxColor.BLUE;
		}

		bounceOffEdge();

		// if you press space, randomize movement
		if (FlxG.keys.justReleased.SPACE) {
			randomizeMovement();
		}

		super.update(elapsed);
	}
}
