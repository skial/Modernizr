package ;

import modernizr.Defaultizr;

#if !display
@:build(modernizr.Customizr.build())
#end
#if dce
@:native('FakeModernizr')
#else
extern
#end
class Modernizr {

	static public function __init__():Void untyped {
		//window.Modernizr = Modernizr;
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
	#if dce
	public static function addTest(str:String, fn:Dynamic):Bool {
		return untyped __js__('Modernizr.addTest')(str, fn);
	}
	#else
	public static function addTest(str:String, fn:Dynamic):Bool;
	#end
	
	/**
	 * Modernizr.prefixed(str) returns the prefixed or nonprefixed
	 * propterty name variant of your input
	 * @param	str
	 * @return  String
	 */
	#if dce
	public static function prefixed(str:String, ?obj:Dynamic, ?scope:Dynamic):String {
		return untyped __js__('Modernizr.prefixed')(str, obj, scope);
	}
	#else
	@:overload(function(str:String, obj:Dynamic, ?scope:Dynamic):Dynamic{})
	public static function prefixed(str:String):String;
	#end
	
	/**
	 * Modernizr.mq(str) tests a given media query, live against
	 * the current state of the window
	 * @param	str
	 * @return  Bool
	 */
	#if dce
	public static function mq(str:String):Bool {
		return untyped __js__('Modernizr.mq')(str);
	}
	#else
	public static function mq(str:String):Bool;
	#end
	
	/**
	 * Modernizr.testStyles(str, fn) allows you to add custom styles to
	 * the document and test an element afterwards.
	 * @param	str
	 * @param	fn
	 */
	#if dce
	public static function testStyles(str:String, fn:Dynamic):Void {
		untyped __js__('Modernizr.testStyles')(str, fn);
	}
	#else
	public static function testStyles(str:String, fn:Dynamic):Void;
	#end
	
	/**
	 * Modernizr.testProp(str) investigates whether a given style property
	 * is recognized. Note that the property names must be provided in the
	 * camelCase variant.
	 * @param	str
	 * @return
	 */
	#if dce
	public static function testProp(str:String):Bool {
		return untyped __js__('Modernizr.testProp')(str);
	}
	#else
	public static function testProp(str:String):Bool;
	#end
	
	/**
	 * Modernizr.testAllProps(str) investigates whether a given style property,
	 * or any of its vendor-prefixed variants is recognized. Note that
	 * the property names must be provided in the camelCase variant.
	 * @param	str
	 * @return
	 */
	#if dce
	public static function testAllProps(str:String):Bool {
		return untyped __js__('Modernizr.testAllProps')(str);
	}
	#else
	public static function testAllProps(str:String):Bool;
	#end
	
	/**
	 * Modernizr.hasEvent(str, elem) detects support for a given event.
	 * @param	str
	 * @param	elem
	 * @return
	 */
	#if dce
	public static function hasEvent(str:String, ?elem:Dynamic):Bool {
		return untyped __js__('Modernizr.hasEvent')(str, elem);
	}
	#else
	public static function hasEvent(str:String, ?elem:Dynamic):Bool;
	#end
	
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
	
	#if (mnc || modernizr_non_core)
	@:feature_detect('a-download') 
	public static var adownload:Bool;
	
	@:feature_detect('audio-audiodata-api') 
	public static var audiodata:Bool;
	
	@:feature_detect('audio-webaudio-api') 
	public static var webaudio:Bool;
	
	@:feature_detect('battery-api')
	public static var battery:Bool;
	
	@:feature_detect('battery-level')
	public static var lowbattery:Bool;
	
	@:feature_detect('blob-constructor')
	public static var blobconstructor:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/canvas-todataurl-type.js
	@:feature_detect('canvas-todataurl-type')
	public static var todataurljpeg:Bool;
	
	@:feature_detect('canvas-todataurl-type')
	public static var todataurlwebp:Bool;
	
	@:feature_detect 
	public static var contenteditable:Bool;
	
	@:feature_detect
	public static var contentsecuritypolicy:Bool;
	
	@:feature_detect
	public static var contextmenu:Bool;
	
	@:feature_detect
	public static var cookies:Bool;
	
	@:feature_detect
	public static var cors:Bool;
	
	@:feature_detect('css-backgroundposition-shorthand')
	public static var bgpositionshorthand:Bool;
	
	@:feature_detect('css-backgroundposition-xy')
	public static var bgpositionxy:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-backgroundrepeat.js
	@:feature_detect('css-backgroundrepeat')
	public static var bgrepeatround:Bool;
	
	@:feature_detect('css-backgroundrepeat')
	public static var bgrepeatspace:Bool;
	
	@:feature_detect('css-backgroundsizecover')
	public static var bgsizecover:Bool;
	
	@:feature_detect('css-boxsizing')
	public static var boxsizing:Bool;
	
	@:feature_detect('css-calc')
	public static var csscalc:Bool;
	
	@:feature_detect('css-cubicbezierrange')
	public static var cubicbezierrange:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-displayrunin.js
	@:feature_detect('css-displayrunin')
	public static inline var displayRunin:Bool = untyped __js__('Modernizr["display-runin"]');
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-displaytable.js
	@:feature_detect('css-displaytable')
	public static inline var displayTable:Bool = untyped __js__('Modernizr["display-table"]');
	
	@:feature_detect('css-filters')
	public static var cssfilters:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-hyphens.js
	@:feature_detect('css-hyphens')
	public static var csshyphens:Bool;
	
	@:feature_detect('css-hyphens')
	public static var softhyphens:Bool;
	
	@:feature_detect('css-hyphens')
	public static var softhyphensfind:Bool;
	
	@:feature_detect('css-lastchild')
	public static var lastchild:Bool;
	
	@:feature_detect('css-mask')
	public static var cssmask:Bool;
	
	@:feature_detect('css-mediaqueries')
	public static var mediaqueries:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/css-objectfit.js
	@:feature_detect('css-objectfit')
	public static inline var objectFit:Bool = untyped __js__('Modernizr["object-fit"]');
	
	@:feature_detect('css-overflow-scrolling')
	public static var overflowscrolling:Bool;
	
	@:feature_detect('css-pointerevents')
	public static var pointerevents:Bool;
	
	@:feature_detect('css-positionsticky')
	public static var csspositionsticky:Bool;
	
	@:feature_detect('css-regions')
	public static var regions:Bool;
	
	@:feature_detect('css-remunit')
	public static var cssremunit:Bool;
	
	@:feature_detect('css-resize')
	public static var cssresize:Bool;
	
	@:feature_detect('css-scrollbars')
	public static var cssscrollbar:Bool;
	
	@:feature_detect('css-subpixelfont')
	public static var subpixelfont:Bool;
	
	@:feature_detect('css-supports')
	public static var supports:Bool;
	
	@:feature_detect('css-userselect')
	public static var userselect:Bool;
	
	@:feature_detect('css-vhunit')
	public static var cssvhunit:Bool;
	
	@:feature_detect('css-vmaxunit')
	public static var cssvmaxunit:Bool;
	
	@:feature_detect('css-vminunit')
	public static var cssvminunit:Bool;
	
	@:feature_detect('css-vwunit')
	public static var cssvwunit:Bool;
	
	@:feature_detect('custom-protocol-handler')
	public static var customProtocolHandler:Bool;
	
	@:feature_detect 
	public static var dart:Bool;
	
	@:feature_detect('dataview-api')
	public static var dataview:Bool;
	
	@:feature_detect('dom-classlist')
	public static var classlist:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/dom-createElement-attrs.js
	@:feature_detect('dom-createElement-attrs')
	public static inline var createElementAttrs:Bool = untyped __js__('Modernizr["createelement-attrs"]');
	
	@:feature_detect('dom-dataset')
	public static var dataset:Bool;
	
	@:feature_detect('dom-microdata')
	public static var microdata:Bool;
	
	@:feature_detect('elem-datalist')
	public static var datalistelem:Bool;
	
	@:feature_detect('elem-details')
	public static var details:Bool;
	
	@:feature_detect('elem-output')
	public static var outputelem:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/elem-progress-meter.js
	@:feature_detect('elem-progress-meter')
	public static var progressbar:Bool;
	
	@:feature_detect('elem-progress-meter')
	public static var meter:Bool;
	
	@:feature_detect('elem-ruby')
	public static var ruby:Bool;
	
	@:feature_detect('elem-time')
	public static var time:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/elem-track.js
	@:feature_detect('elem-track')
	public static var textTrackApi:Bool;
	
	@:feature_detect('elem-track')
	public static var track:Bool;
	
	@:feature_detect 
	public static var emoji:Bool;
	
	@:feature_detect('es5-strictmode')
	public static var strictmode:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/event-deviceorientation-motion.js
	@:feature_detect('event-deviceorientation-motion')
	public static var deviceMotion:Bool;
	
	@:feature_detect('event-deviceorientation-motion')
	public static var deviceOrientation:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/exif-orientation.js
	@:feature_detect('exif-orientation')
	public static inline var exifOrientation:Bool = untyped __js__('Modernizr["exif-orientation"]');
	
	@:feature_detect('file-api')
	public static var fileReader:Bool;
	
	@:feature_detect('file-filesystem')
	public static var fileSystem:Bool;
	
	@:feature_detect('forms-fileinput')
	public static var fileInput:Bool;
	
	@:feature_detect('forms-formattribute')
	public static var formAttribute:Bool;
	
	@:feature_detect('forms-inputnumber-l10n')
	public static var localizedNumber:Bool;
	
	@:feature_detect('forms-placeholder')
	public static var placeholder:Bool;
	
	@:feature_detect('forms-speechinput')
	public static var speechInput:Bool;
	
	@:feature_detect('forms-validation')
	public static var formValidation:Bool;
	
	@:feature_detect('fullscreen-api')
	public static var fullscreen:Bool;
	
	@:feature_detect 
	public static var gamepad:Bool;
	
	@:feature_detect 
	public static var getusermedia:Bool;
	
	@:feature_detect 
	public static var ie8compat:Bool;
	
	@:feature_detect('iframe-sandbox')
	public static var sandbox:Bool;
	
	@:feature_detect('iframe-seamless')
	public static var seamless:Bool;
	
	@:feature_detect('iframe-srcdoc')
	public static var srcdoc:Bool;
	
	@:feature_detect('img-apng')
	public static var apng:Bool;
	
	// https://github.com/Modernizr/Modernizr/blob/master/feature-detects/img-webp-lossless.js
	@:feature_detect('img-webp-lossless')
	public static inline var webpLossless:Bool = untyped __js__('Modernizr["webp-lossless"]');
	
	@:feature_detect('img-webp')
	public static var webp:Bool;
	
	@:feature_detect
	public static var json:Bool;
	
	@:feature_detect('lists-reversed')
	public static var olreversed:Bool;
	
	@:feature_detect
	public static var mathML:Bool;
	
	@:feature_detect('network-connection')
	public static var lowBandwidth:Bool;
	
	@:feature_detect('network-eventsource')
	public static var eventsource:Bool;
	
	@:feature_detect('network-xhr2')
	public static var xhr2:Bool;
	
	@:feature_detect
	public static var notification:Bool;
	
	@:feature_detect
	public static var performance:Bool;
	
	@:feature_detect('pointerlock-api') 
	public static var pointerlock:Bool;
	
	@:feature_detect('quota-management-api')
	public static var quotaManagement:Bool;
	
	@:feature_detect('requestanimationframe')
	public static var raf:Bool;
	
	@:feature_detect('script-async')
	public static var scriptasync:Bool;
	
	@:feature_detect('script-defer')
	public static var scriptdefer:Bool;
	
	@:feature_detect('style-scoped')
	public static var stylescoped:Bool;
	
	@:feature_detect('svg-filters')
	public static var svgfilters:Bool;
	
	@:feature_detect
	public static var unicode:Bool;
	
	@:feature_detect('url-data-uri')
	public static var datauri:Bool;
	
	@:feature_detect 
	public static var userdata:Bool;
	
	@:feature_detect('vibration')
	public static var vibrate:Bool;
	
	@:feature_detect('web-intents')
	public static var webintents:Bool;
	
	@:feature_detect('webgl-extensions')
	public static var webglExtensions:Bool;
	
	@:feature_detect('websockets-binary')
	public static var websocketsBinary:Bool;
	
	@:feature_detect('window-framed')
	public static var framed:Bool;
	
	@:feature_detect('workers-blobworkers')
	public static var blobWorkers:Bool;
	
	@:feature_detect('workers-dataworkers')
	public static inline var dataWorkers:Bool = untyped __js__('Modernizr.dataworkers');
	
	@:feature_detect('workers-sharedworkers')
	public static inline var sharedWorkers:Bool = untyped __js__('Modernizr.sharedworkers');
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
	public inline static var datetimelocal:Bool = untyped __js__('Modernizr.inputtypes["datetime-local"]');
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