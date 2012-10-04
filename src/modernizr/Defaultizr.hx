package modernizr;

/**
 * ...
 * @author Skial Bainn
 */

@:keep
class Defaultizr {

	/**
	 * Extra Functionality
	 */
	public static var shiv:Bool = true;
	public static var printShiv:Bool = false;
	public static var load:Bool = true;
	public static var mq:Bool = false;
	public static var cssClasses:Bool = true;
	
	public static var cssPrefix:String = '';
	
	/**
	 * Extensibility
	 */
	public static var addTest:Bool = false;
	public static var prefixed:Bool = false;
	public static var testStyles:Bool = false;
	public static var testProp:Bool = false;
	public static var testAllProps:Bool = false;
	public static var hasEvent:Bool = false;
	public static var _prefixes:Bool = false;
	public static var _domPrefixes:Bool = false;
	
	/**
	 * Customizr Only
	 */
	
	@:ignore @:macro public static function addUsedField(name:String) {
		used_fields.set(name, 0);
		return haxe.macro.Context.parse('', haxe.macro.Context.currentPos());
	}
	#if macro
	@:ignore public static var used_fields:Hash<Int> = new Hash<Int>();
	#end
}