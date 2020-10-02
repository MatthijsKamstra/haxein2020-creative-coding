package;

import haxein.App;
import js.Browser.*;
// easy access to Globals
import Sketch.Global.*;

// syntactic sugar to extend CanvasRenderingContext2D
using cc.CanvasTools;

// color
import cc.util.ColorUtil;
import cc.util.ColorUtil.*;

class Main {
	public function new() {
		// console.log('START :: main');
		document.addEventListener("DOMContentLoaded", function(event) {
			console.log('${App.NAME} Dom ready :: build: ${App.getBuildDate()}');

			var color0 = ColorUtil.toRGB(0x69D2E7);
			var color1 = ColorUtil.toRGB(0xA7DBD8);
			var color2 = ColorUtil.toRGB(0xE0E4CC);
			var color3 = ColorUtil.toRGB(0xF38630);
			var color4 = ColorUtil.toRGB(0xFA6900);

			trace(getColourObj(color0), getColourObj(color1), getColourObj(color2)); // rgb(105, 210, 231), rgb(167, 219, 216), rgb(224, 228, 204)

			// default sketch will be "fullscreen"
			var ctx:js.html.CanvasRenderingContext2D = Sketch.create('creative_code_mck');
			// ctx.clearRect(0, 0, w, h); // w, h are created by sketch
			ctx.backgroundRGB(color2);
			ctx.fillColourRGB(color0);
			ctx.strokeColourRGB(color1);
			ctx.strokeWeight(10);
			ctx.circleFillStroke(w * .5, h * .5, w * .4);
		});
	}

	static function main() {
		var app = new Main();
	}
}
