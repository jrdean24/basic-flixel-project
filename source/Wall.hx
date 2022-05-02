package;

import flixel.FlxSprite;
import flixel.util.FlxColor;

class Wall extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		makeGraphic(25, 300, FlxColor.GRAY, false, "Wall");
		immovable = true;
	}
}
