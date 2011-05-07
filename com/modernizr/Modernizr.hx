/**
 * ...
 * @author Skial Bainn
 */

package com.modernizr;
import haxe.macro.Tools;

@:native('Modernizr')
extern class Modernizr {

	static public function __init__():Void untyped {
		#if !noEmbedJS
			Tools.includeFile(
				#if m1.5 
					'modernizr/modernizr-1.5.min.js'
				#else 
					'modernizr/modernizr-1.7.min.js'
				#end
			);
		#else
			window.Modernizr = Modernizr;
		#end
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
	public static var inputtypes = Inputtypes;
	
	/**
	 * CSS classes for input are not applied
	 */
	public static var input = Input;
	
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
	 * CSS classes .historymanagement/ .no-historymanagement
	 */
	public static var historymanagement:Bool;
	
	/**
	 * CSS classes .draganddrop/ .no-draganddrop
	 */
	public static var draganddrop:Bool;
	
	/**
	 * CSS classes .crosswindowmessaging/ .no-crosswindowmessaging
	 */
	public static var crosswindowmessaging:Bool;
	
	/**
	 * CSS classes .touch/ .no-touch
	 */
	public static var touch:Bool;
	
	/**
	 * 
	 * @param	str	-	What you want to test for eg 'text-shadow'
	 * @param	fn		-	The function containing the test
	 * @return
	 */
	public static function addTest(str:String, fn:Dynamic):Bool;
}

@:native('Modernizr.audio')
private extern class Audio {
	public static var ogg:Bool;
	public static var mp3:Bool;
	public static var wav:Bool;
	public static var m4a:Bool;
}

@:native('Modernizr.video')
private extern class Video {
	public static var ogg:Bool;
	public static var h264:Bool;
}

@:native('Modernizr.inputtypes')
private extern class Inputtypes {
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
	public static var number:Bool;
	public static var range:Bool;
	public static var color:Bool;
	
}

@:native('Modernizr.input')
private extern class Input {
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