package;

import flixel.FlxSprite;
import flixel.util.FlxColor;

class ScreensaverHero extends FlxSprite
{
	static inline var SPEED:Float = 200;

	public function new()
	{
		super(x, y);
		makeGraphic(25, 25, FlxColor.BLUE, false, "ScreenSaverHero");
		drag.x = drag.y = 1600;
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
			velocity.set(SPEED, 0);
			// this.color = FlxColor.YELLOW;
		}
		else if (this.x < 250 && this.y > 250)
		{
			this.color = FlxColor.BLUE;
		}

		super.update(elapsed);
	}
}
