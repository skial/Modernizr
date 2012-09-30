/**
 * ...
 * @author Skial Bainn
 */

package ;


@:build(modernizr.Customizr.build())
@:native('Modernizr')
extern class Modernizr {

	static public function __init__():Void untyped {
		window.Modernizr = Modernizr;
	}
	
	/**
	 * CSS classes .fontface/ .no-fontface
	 */
	public static var fontface:Bool;
	
	/**
	 * CSS classes .canvas/ .no-canvas
	 */
	public static var canvas:Bool;
	
	/**
	 * CSS classes .canvastext/ .no-canvastext
	 */
	public static var canvastext:Bool;
	
	/**
	 * CSS classes .webgl/ .no-webgl
	 */
	public static var webgl:Bool;
	
	/**
	 * CSS classes .audio/ .no-audio
	 * CSS classes for audio.[format] not applied
	 */
	public static var audio = Audio;
	
	/**
	 * CSS classes .video/ .no-video
	 * CSS classes for video.[format] not applied
	 */
	public static var video = Video;
	
	/**
	 * CSS classes .rgba/ .no-.rgba
	 */
	public static var rgba:Bool;
	
	/**
	 * CSS classes .hsla/ .no-hsla
	 */
	public static var hsla:Bool;
	
	/**
	 * CSS classes .borderimage/ .no-borderimage
	 */
	public static var borderimage:Bool;
	
	/**
	 * CSS classes .borderradius/ .no-borderradius
	 */
	public static var borderradius:Bool;
	
	/**
	 * CSS classes .boxshadow/ .no-boxshadow
	 */
	public static var boxshadow:Bool;
	
	/**
	 * CSS classes .textshadow/ .no-textshadow
	 */
	public static var textshadow:Bool;
	
	/**
	 * CSS classes .multiplebgs/ .no-multiplebgs
	 */
	public static var multiplebgs:Bool;
	
	/**
	 * CSS classes .backgroundsize/ .no-backgroundsize
	 */
	public static var backgroundsize:Bool;
	
	/**
	 * CSS classes .opacity/ .no-opacity
	 */
	public static var opacity:Bool;
	
	/**
	 * CSS classes .cssanimations/ .no-cssanimations
	 */
	public static var cssanimations:Bool;
	
	/**
	 * CSS classes .csscolumns/ .no-csscolumns
	 */
	public static var csscolumns:Bool;
	
	/**
	 * CSS classes .cssgradients/ .no-cssgradients
	 */
	public static var cssgradients:Bool;
	
	/**
	 * CSS classes .cssreflections/ .no-cssreflections
	 */
	public static var cssreflections:Bool;
	
	/**
	 * CSS classes .csstransforms/ .no-csstransforms
	 */
	public static var csstransforms:Bool;
	
	/**
	 * CSS classes .csstransforms3d/ .no-csstransforms3d
	 */
	public static var csstransforms3d:Bool;
	
	/**
	 * CSS classes ./flexbox .no-flexbox
	 */
	public static var flexbox:Bool;
	
	/**
	 * CSS classes .csstransitions/ .no-csstransitions
	 */
	public static var csstransitions:Bool;
	
	/**
	 * CSS classes .geolocation/ .no-geolocation
	 */
	public static var geolocation:Bool;
	
	/**
	 * CSS classes for input types are not applied
	 */
	public static var inputtypes = InputTypes;
	
	/**
	 * CSS classes for input are not applied
	 */
	public static var input = InputAttributes;
	
	/**
	 * CSS classes .localstorage/ .no-localstorage
	 */
	public static var localstorage:Bool;
	
	/**
	 * CSS classes .sessionstorage/ .no-sessionstorage
	 */
	public static var sessionstorage:Bool;
	
	/**
	 * CSS classes .webworkers/ .no-webworkers
	 */
	public static var webworkers:Bool;
	
	/**
	 * CSS classes .applicationcache/ .no-applicationcache
	 */
	public static var applicationcache:Bool;
	
	/**
	 * CSS classes .svg/ .no-svg
	 */
	public static var svg:Bool;
	
	/**
	 * CSS classes .inlinesvg/ .no-inlinesvg
	 */
	public static var inlinesvg:Bool;
	
	/**
	 * CSS classes .svgclippaths/ .no-svgclippaths
	 */
	public static var svgclippaths:Bool;
	
	/**
	 * CSS classes .smil/ .no-smil
	 */
	public static var smil:Bool;
	
	/**
	 * CSS classes .websqldatabase/ .no-websqldatabase
	 */
	public static var websqldatabase:Bool;
	
	/**
	 * CSS classes .indexeddb/ .no-indexeddb
	 */
	public static var indexeddb:Bool;
	
	/**
	 * CSS classes .websockets/ .no-websockets
	 */
	public static var websockets:Bool;
	
	/**
	 * CSS classes .hashchange/ .no-hashchange
	 */
	public static var hashchange:Bool;
	
	/**
	 * CSS classes .history/ .no-history
	 */
	public static var history:Bool;
	
	/**
	 * CSS classes .draganddrop/ .no-draganddrop
	 */
	public static var draganddrop:Bool;
	
	/**
	 * CSS classes .postmessage/ .no-postmessage
	 */
	public static var postmessage:Bool;
	
	/**
	 * CSS classes .touch/ .no-touch
	 */
	public static var touch:Bool;
	
	/**
	 * CSS :before / :after
	 */
	public static var generatedcontent:Bool;
	
	/**
	 * 
	 * @param	str	-	What you want to test for eg 'text-shadow'
	 * @param	fn		-	The function containing the test
	 * @return
	 */
	public static function addTest(str:String, fn:Dynamic):Bool;
	
	/**
	 * Modernizr.prefixed(str) returns the prefixed or nonprefixed
	 * propterty name variant of your input
	 * @param	str
	 * @return  String
	 */
	@:overload(function(str:String, obj:Dynamic, ?scope:Dynamic):Dynamic{})
	public static function prefixed(str:String):String;
	
	/**
	 * Modernizr.mq(str) tests a given media query, live against
	 * the current state of the window
	 * @param	str
	 * @return  Bool
	 */
	public static function mq(str:String):Bool;
	
	/**
	 * Modernizr.testStyles(str, fn) allows you to add custom styles to
	 * the document and test an element afterwards.
	 * @param	str
	 * @param	fn
	 */
	public static function testStyles(str:String, fn:Dynamic):Void;
	
	/**
	 * Modernizr.testProp(str) investigates whether a given style property
	 * is recognized. Note that the property names must be provided in the
	 * camelCase variant.
	 * @param	str
	 * @return
	 */
	public static function testProp(str:String):Bool;
	
	/**
	 * Modernizr.testAllProps(str) investigates whether a given style property,
	 * or any of its vendor-prefixed variants is recognized. Note that
	 * the property names must be provided in the camelCase variant.
	 * @param	str
	 * @return
	 */
	public static function testAllProps(str:String):Bool;
	
	/**
	 * Modernizr.hasEvent(str, elem) detects support for a given event.
	 * @param	str
	 * @param	elem
	 * @return
	 */
	public static function hasEvent(str:String, ?elem:Dynamic):Bool;
	
	/*
	 * The vendor prefixes you'll have to test against.
	 */
	public static var _prefixes:Array<String>;
	public static var _domPrefixes:Array<String>;
	
	/**
	 * Modernizr Non Core Feature Detects
	 * -----
	 * Set -D modernizr_non_core in your .hxml file
	 */
	
	#if modernizr_non_core
	@:feature_detect public static var adownload:Bool;
	@:feature_detect public static var audiodata:Bool;
	@:feature_detect public static var webaudio:Bool;
	@:feature_detect public static var battery:Bool;
	@:feature_detect public static var lowbattery:Bool;
	@:feature_detect public static var blobconstructor:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/canvas-todataurl-type.js
	@:feature_detect public static var todataurljpeg:Bool;
	@:feature_detect public static var todataurlwebp:Bool;
	
	@:feature_detect public static var contenteditable:Bool;
	@:feature_detect public static var contentsecuritypolicy:Bool;
	@:feature_detect public static var contextmenu:Bool;
	@:feature_detect public static var cookies:Bool;
	@:feature_detect public static var cors:Bool;
	@:feature_detect public static var bgpositionshorthand:Bool;
	@:feature_detect public static var bgpositionxy:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-backgroundrepeat.js
	@:feature_detect public static var bgrepeatround:Bool;
	@:feature_detect public static var bgrepeatspace:Bool;
	
	@:feature_detect public static var bgsizecover:Bool;
	@:feature_detect public static var boxsizing:Bool;
	@:feature_detect public static var csscalc:Bool;
	@:feature_detect public static var cubicbezierrange:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-displayrunin.js
	@:feature_detect public static inline var displayRunin:Bool = untyped __js__('Modernizr["display-runin"]');
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-displaytable.js
	@:feature_detect public static inline var displayTable:Bool = untyped __js__('Modernizr["display-table"]');
	
	@:feature_detect public static var cssfilters:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-hyphens.js
	@:feature_detect public static var csshyphens:Bool;
	@:feature_detect public static var softhyphens:Bool;
	@:feature_detect public static var softhyphensfind:Bool;
	
	@:feature_detect public static var lastchild:Bool;
	@:feature_detect public static var cssmask:Bool;
	@:feature_detect public static var mediaqueries:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-objectfit.js
	@:feature_detect public static inline var objectFit:Bool = untyped __js__('Modernizr["object-fit"]');
	
	@:feature_detect public static var overflowscrolling:Bool;
	@:feature_detect public static var pointerevents:Bool;
	@:feature_detect public static var csspositionsticky:Bool;
	@:feature_detect public static var regions:Bool;
	@:feature_detect public static var cssremunit:Bool;
	@:feature_detect public static var cssresize:Bool;
	@:feature_detect public static var cssscrollbar:Bool;
	@:feature_detect public static var subpixelfont:Bool;
	@:feature_detect public static var supports:Bool;
	@:feature_detect public static var userselect:Bool;
	@:feature_detect public static var cssvhunit:Bool;
	@:feature_detect public static var cssvmaxunit:Bool;
	@:feature_detect public static var cssvminunit:Bool;
	@:feature_detect public static var cssvwunit:Bool;
	@:feature_detect public static var customprotocolhandler:Bool;
	@:feature_detect public static var dart:Bool;
	@:feature_detect public static var dataview:Bool;
	@:feature_detect public static var classlist:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/dom-createElement-attrs.js
	@:feature_detect public static inline var createElementAttrs:Bool = untyped __js__('Modernizr["createelement-attrs"]');
	
	@:feature_detect public static var dataset:Bool;
	@:feature_detect public static var microdata:Bool;
	@:feature_detect public static var datalistelem:Bool;
	@:feature_detect public static var details:Bool;
	@:feature_detect public static var outputelem:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/elem-progress-meter.js
	@:feature_detect public static var progressbar:Bool;
	@:feature_detect public static var meter:Bool;
	
	@:feature_detect public static var ruby:Bool;
	@:feature_detect public static var time:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/elem-track.js
	@:feature_detect public static var texttrackapi:Bool;
	@:feature_detect public static var track:Bool;
	
	@:feature_detect public static var emoji:Bool;
	@:feature_detect public static var strictmode:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/event-deviceorientation-motion.js
	@:feature_detect public static var devicemotion:Bool;
	@:feature_detect public static var deviceorientation:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/exif-orientation.js
	@:feature_detect public static inline var exifOrientation:Bool = untyped __js__('Modernizr["exif-orientation"]');
	
	@:feature_detect public static var filereader:Bool;
	@:feature_detect public static var filesystem:Bool;
	@:feature_detect public static var fileinput:Bool;
	@:feature_detect public static var formattribute:Bool;
	@:feature_detect public static var localizedNumber:Bool;
	@:feature_detect public static var placeholder:Bool;
	@:feature_detect public static var speechinput:Bool;
	@:feature_detect public static var formvalidation:Bool;
	@:feature_detect public static var fullscreen:Bool;
	@:feature_detect public static var gamepads:Bool;
	@:feature_detect public static var getusermedia:Bool;
	@:feature_detect public static var ie8compat:Bool;
	@:feature_detect public static var sandbox:Bool;
	@:feature_detect public static var seamless:Bool;
	@:feature_detect public static var srcdoc:Bool;
	@:feature_detect public static var apng:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/img-webp-lossless.js
	@:feature_detect public static inline var webpLossless:Bool = untyped __js__('Modernizr["webp-lossless"]');
	
	@:feature_detect public static var webp:Bool;
	@:feature_detect public static var json:Bool;
	@:feature_detect public static var olreversed:Bool;
	@:feature_detect public static var mathml:Bool;
	@:feature_detect public static var lowbandwidth:Bool;
	@:feature_detect public static var eventsource:Bool;
	@:feature_detect public static var xhr2:Bool;
	@:feature_detect public static var notification:Bool;
	@:feature_detect public static var performance:Bool;
	@:feature_detect public static var pointerlock:Bool;
	@:feature_detect public static var quotamanagement:Bool;
	@:feature_detect public static var raf:Bool;
	@:feature_detect public static var scriptasync:Bool;
	@:feature_detect public static var scriptdefer:Bool;
	@:feature_detect public static var stylescoped:Bool;
	@:feature_detect public static var svgfilters:Bool;
	@:feature_detect public static var unicode:Bool;
	@:feature_detect public static var datauri:Bool;
	@:feature_detect public static var userdata:Bool;
	@:feature_detect public static var vibrate:Bool;
	@:feature_detect public static var webintents:Bool;
	
	// webgl extensions
	
	@:feature_detect public static var websocketsbinary:Bool;
	@:feature_detect public static var framed:Bool;
	@:feature_detect public static var blobworkers:Bool;
	@:feature_detect public static var dataworkers:Bool;
	@:feature_detect public static var sharedworkers:Bool;
	#end
}

@:native('Modernizr.audio')
private extern class Audio implements Dynamic<Bool> {
	public static var ogg:Bool;
	public static var mp3:Bool;
	public static var wav:Bool;
	public static var m4a:Bool;
}

@:native('Modernizr.video')
private extern class Video implements Dynamic<Bool>{
	public static var ogg:Bool;
	public static var webm:Bool;
	public static var h264:Bool;
}

@:native('Modernizr.inputtypes')
private extern class InputTypes {
	public static var search:Bool;
	public static var tel:Bool;
	public static var url:Bool;
	public static var email:Bool;
	public static var datetime:Bool;
	public static var date:Bool;
	public static var month:Bool;
	public static var week:Bool;
	public static var time:Bool;
	//public static var datetimelocal:Bool; // I cant get datetime-local, still trying to get around this...
	public inline static var datetimelocal:Bool = untyped __js__('Modernizr.inputtypes.datetime-local');
	public static var number:Bool;
	public static var range:Bool;
	public static var color:Bool;
	
}

@:native('Modernizr.input')
private extern class InputAttributes {
	public static var autocomplete:Bool;
	public static var autofocus:Bool;
	public static var list:Bool;
	public static var placeholder:Bool;
	public static var max:Bool;
	public static var min:Bool;
	public static var multiple:Bool;
	public static var pattern:Bool;
	public static var required:Bool;
	public static var step:Bool;
}