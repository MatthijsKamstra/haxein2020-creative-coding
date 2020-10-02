package haxein;

import haxe.display.JsonModuleTypes.ImportStatus;
import haxe.macro.Context;

class App {
	public static var NAME:String = "[cc-haxein2020-creative-coding]";

	public static macro function getBuildDate() {
		#if !display
		var date = Date.now().toString();
		return macro $v{date};
		#else
		var date = Date.now().toString();
		return macro $v{date};
		#end
	}
}
