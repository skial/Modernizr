package modernizr;

/**
 * ...
 * @author Skial Bainn
 */

@:native('Modernizr.inputtypes')
class InputTypes {
	public static var search:Bool;
	public static var tel:Bool;
	public static var url:Bool;
	public static var email:Bool;
	public static var datetime:Bool;
	public static var date:Bool;
	public static var month:Bool;
	public static var week:Bool;
	public static var time:Bool;
	public static var datetimelocal:Bool = untyped __js__('Modernizr.inputtypes["datetime-local"]');
	public static var number:Bool;
	public static var range:Bool;
	public static var color:Bool;
	
}