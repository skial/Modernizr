package ;

import js.Lib;
import com.modernizr.Modernizr;

/**
 * ...
 * @author Skial Bainn
 */

class Main {
	
	static function main() {
		trace('@font-face: 					' + Modernizr.fontface);
		trace('canvas: 						' + Modernizr.canvas);
		trace('canvas text: 				' + Modernizr.canvastext);
		trace('webgl:						' + Modernizr.webgl);
		trace('html5 audio: 				' + Modernizr.audio);
		trace('html5 audio format ogg: 		' + Modernizr.audio.ogg);
		trace('html5 audio format wav: 		' + Modernizr.audio.wav);
		trace('html5 audio format mp3: 		' + Modernizr.audio.mp3);
		trace('html5 audio format m4a: 		' + Modernizr.audio.m4a);
		trace('html5 video: 				' + Modernizr.video);
		trace('html5 video format ogg: 		' + Modernizr.video.ogg);
		trace('html5 video format h264: 	' + Modernizr.video.h264);
		trace('rgba: 						' + Modernizr.rgba);
		trace('hsla: 						' + Modernizr.hsla);
		trace('border-image: 				' + Modernizr.borderimage);
		trace('border-radius: 				' + Modernizr.borderradius);
		trace('box-shadow: 					' + Modernizr.boxshadow);
		trace('text-shadow:					' + Modernizr.textshadow);
		trace('multiple-backgrounds: 		' + Modernizr.multiplebgs);
		trace('backgroundsize: 				' + Modernizr.backgroundsize);
		trace('opacity: 					' + Modernizr.opacity);
		trace('css animations: 				' + Modernizr.cssanimations);
		trace('css columns: 				' + Modernizr.csscolumns);
		trace('css gradients: 				' + Modernizr.cssgradients);
		trace('css reflections: 			' + Modernizr.cssreflections);
		trace('css 2d transforms: 			' + Modernizr.csstransforms);
		trace('css 3d transforms: 			' + Modernizr.csstransforms3d);
		trace('flexable box model:			' + Modernizr.flexbox);
		trace('css transitions: 			' + Modernizr.csstransitions);
		trace('geolocation: 				' + Modernizr.geolocation);
		trace(Modernizr.inputtypes);
		trace(Modernizr.input);
		trace('local storage: 				' + Modernizr.localstorage);
		trace('session storage: 			' + Modernizr.sessionstorage);
		trace('web workers: 				' + Modernizr.webworkers);
		trace('application cache: 			' + Modernizr.applicationcache);
		trace('svg: 						' + Modernizr.svg);
		trace('inline svg:					' + Modernizr.inlinesvg);
		trace('svg clip paths: 				' + Modernizr.svgclippaths);
		trace('smil: 						' + Modernizr.smil);
		trace('web sql database: 			' + Modernizr.websqldatabase);
		trace('indexed db: 					' + Modernizr.indexeddb);
		trace('web sockets: 				' + Modernizr.websockets);
		trace('hashchange event: 			' + Modernizr.hashchange);
		trace('history management: 			' + Modernizr.historymanagement);
		trace('drag and drop: 				' + Modernizr.draganddrop);
		trace('cross window messaging:	 	' + Modernizr.crosswindowmessaging);
		trace('touch:						' + Modernizr.touch);
	}
	
}