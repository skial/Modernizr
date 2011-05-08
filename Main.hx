package ;

import js.Lib;
import Modernizr;

/**
 * ...
 * @author Skial Bainn
 */

class Main {
	
	static function main() {
		var hash:Hash<Bool> = new Hash<Bool>();
		
		hash.set('@font-face', Modernizr.fontface);
		hash.set('Canvas', Modernizr.canvas);
		hash.set('Canvas Text', Modernizr.canvastext);
		hash.set('WebGL', Modernizr.webgl);
		hash.set('HTML5 Audio', untyped Modernizr.audio);
		//hash.set('html5 audio format OGG', Modernizr.audio.ogg);
		//hash.set('html5 audio format WAV', Modernizr.audio.wav);
		//hash.set('html5 audio format MP3', Modernizr.audio.mp3);
		//hash.set('html5 audio format M4A', Modernizr.audio.m4a);
		hash.set('HTML5 Video', untyped Modernizr.video);
		//hash.set('html5 video format OGG', Modernizr.video.ogg);
		//hash.set('html5 video format H264', Modernizr.video.h264);
		hash.set('rgba()', Modernizr.rgba);
		hash.set('hsla()', Modernizr.hsla);
		hash.set('border-image', Modernizr.borderimage);
		hash.set('border-radius', Modernizr.borderradius);
		hash.set('box-shadow', Modernizr.boxshadow);
		hash.set('text-shadow', Modernizr.textshadow);
		hash.set('Multiple Backgrounds', Modernizr.multiplebgs);
		hash.set('Background Size', Modernizr.backgroundsize);
		hash.set('Opacity', Modernizr.opacity);
		hash.set('CSS Animations', Modernizr.cssanimations);
		hash.set('CSS Columns', Modernizr.csscolumns);
		hash.set('CSS Gradients', Modernizr.cssgradients);
		hash.set('CSS Reflections', Modernizr.cssreflections);
		hash.set('CSS 2D Transforms', Modernizr.csstransforms);
		hash.set('CSS 3D Transforms', Modernizr.csstransforms3d);
		hash.set('Flexable Box Model', Modernizr.flexbox);
		hash.set('CSS Transitions', Modernizr.csstransitions);
		hash.set('Geolocation', Modernizr.geolocation);
		hash.set('Local Storage', Modernizr.localstorage);
		hash.set('Session Storage', Modernizr.sessionstorage);
		hash.set('Web Workers', Modernizr.webworkers);
		hash.set('Application Cache', Modernizr.applicationcache);
		hash.set('SVG', Modernizr.svg);
		hash.set('Inline SVG', Modernizr.inlinesvg);
		hash.set('SVG Clip Paths', Modernizr.svgclippaths);
		hash.set('SMIL', Modernizr.smil);
		hash.set('Web SQL Database', Modernizr.websqldatabase);
		hash.set('Indexed DB', Modernizr.indexeddb);
		hash.set('Web Sockets', Modernizr.websockets);
		hash.set('HashChange Event', Modernizr.hashchange);
		hash.set('History Management', Modernizr.historymanagement);
		hash.set('Drag & Drop', Modernizr.draganddrop);
		hash.set('Cross Window Messaging', Modernizr.crosswindowmessaging);
		hash.set('Touch Events', Modernizr.touch);
		
		var hxnzr = Lib.document.getElementById('hxnzr');
		var div;
		
		for (n in hash.keys()) {
			
			div = Lib.document.createElement('div');
			div.className += 'prop ';
			div.innerHTML = n;
			hxnzr.appendChild(div);
			
			if (hash.get(n)) {
				div.className += 'good ';
			} else {
				div.className += 'bad ';
			}
			
		}
		
		/*trace(Modernizr.inputtypes);
		trace(Modernizr.input);*/
	}
	
}