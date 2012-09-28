/**
 * ...
 * @author Skial Bainn
 */

package ;

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
	public static var adownload:Bool;
	public static var audiodata:Bool;
	public static var webaudio:Bool;
	public static var battery:Bool;
	public static var lowbattery:Bool;
	public static var blobconstructor:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/canvas-todataurl-type.js
	public static var todataurljpeg:Bool;
	public static var todataurlwebp:Bool;
	
	public static var contenteditable:Bool;
	public static var contentsecuritypolicy:Bool;
	public static var contextmenu:Bool;
	public static var cookies:Bool;
	public static var cors:Bool;
	public static var bgpositionshorthand:Bool;
	public static var bgpositionxy:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-backgroundrepeat.js
	public static var bgrepeatround:Bool;
	public static var bgrepeatspace:Bool;
	
	public static var bgsizecover:Bool;
	public static var boxsizing:Bool;
	public static var csscalc:Bool;
	public static var cubicbezierrange:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-displayrunin.js
	public static inline var displayRunin:Bool = untyped __js__('Modernizr["display-runin"]');
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-displaytable.js
	public static inline var displayTable:Bool = untyped __js__('Modernizr["display-table"]');
	
	public static var cssfilters:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-hyphens.js
	public static var csshyphens:Bool;
	public static var softhyphens:Bool;
	public static var softhyphensfind:Bool;
	
	public static var lastchild:Bool;
	public static var cssmask:Bool;
	public static var mediaqueries:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-objectfit.js
	public static inline var objectFit:Bool = untyped __js__('Modernizr["object-fit"]');
	
	public static var overflowscrolling:Bool;
	public static var pointerevents:Bool;
	public static var csspositionsticky:Bool;
	public static var regions:Bool;
	public static var cssremunit:Bool;
	public static var cssresize:Bool;
	public static var cssscrollbar:Bool;
	public static var subpixelfont:Bool;
	public static var supports:Bool;
	public static var userselect:Bool;
	public static var cssvhunit:Bool;
	public static var cssvmaxunit:Bool;
	public static var cssvminunit:Bool;
	public static var cssvwunit:Bool;
	public static var customprotocolhandler:Bool;
	public static var dart:Bool;
	public static var dataview:Bool;
	public static var classlist:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/dom-createElement-attrs.js
	public static inline var createElementAttrs:Bool = untyped __js__('Modernizr["createelement-attrs"]');
	
	public static var dataset:Bool;
	public static var microdata:Bool;
	public static var datalistelem:Bool;
	public static var details:Bool;
	public static var outputelem:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/elem-progress-meter.js
	public static var progressbar:Bool;
	public static var meter:Bool;
	
	public static var ruby:Bool;
	public static var time:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/elem-track.js
	public static var texttrackapi:Bool;
	public static var track:Bool;
	
	public static var emoji:Bool;
	public static var strictmode:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/event-deviceorientation-motion.js
	public static var devicemotion:Bool;
	public static var deviceorientation:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/exif-orientation.js
	public static inline var exifOrientation:Bool = untyped __js__('Modernizr["exif-orientation"]');
	
	public static var filereader:Bool;
	public static var filesystem:Bool;
	public static var fileinput:Bool;
	public static var formattribute:Bool;
	public static var localizedNumber:Bool;
	public static var placeholder:Bool;
	public static var speechinput:Bool;
	public static var formvalidation:Bool;
	public static var fullscreen:Bool;
	public static var gamepads:Bool;
	public static var getusermedia:Bool;
	public static var ie8compat:Bool;
	public static var sandbox:Bool;
	public static var seamless:Bool;
	public static var srcdoc:Bool;
	public static var apng:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/img-webp-lossless.js
	public static inline var webpLossless:Bool = untyped __js__('Modernizr["webp-lossless"]');
	
	public static var webp:Bool;
	public static var json:Bool;
	public static var olreversed:Bool;
	public static var mathml:Bool;
	public static var lowbandwidth:Bool;
	public static var eventsource:Bool;
	public static var xhr2:Bool;
	public static var notification:Bool;
	public static var performance:Bool;
	public static var pointerlock:Bool;
	public static var quotamanagement:Bool;
	public static var raf:Bool;
	public static var scriptasync:Bool;
	public static var scriptdefer:Bool;
	public static var stylescoped:Bool;
	public static var svgfilters:Bool;
	public static var unicode:Bool;
	public static var datauri:Bool;
	public static var userdata:Bool;
	public static var vibrate:Bool;
	public static var webintents:Bool;
	
	// webgl extensions
	
	public static var websocketsbinary:Bool;
	public static var framed:Bool;
	public static var blobworkers:Bool;
	public static var dataworkers:Bool;
	public static var sharedworkers:Bool;
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