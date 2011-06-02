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
		hash.set('Background Size', Modernizr.backgroundsize);
		hash.set('border-image', Modernizr.borderimage);
		hash.set('border-radius', Modernizr.borderradius);
		hash.set('box-shadow', Modernizr.boxshadow);
		hash.set('Flexable Box Model', Modernizr.flexbox);
		hash.set('hsla()', Modernizr.hsla);
		hash.set('Multiple Backgrounds', Modernizr.multiplebgs);
		hash.set('Opacity', Modernizr.opacity);
		hash.set('rgba()', Modernizr.rgba);
		hash.set('text-shadow', Modernizr.textshadow);
		hash.set('CSS Animations', Modernizr.cssanimations);
		hash.set('CSS Columns', Modernizr.csscolumns);
		hash.set('CSS Gradients', Modernizr.cssgradients);
		hash.set('CSS Reflections', Modernizr.cssreflections);
		hash.set('CSS 2D Transforms', Modernizr.csstransforms);
		hash.set('CSS 3D Transforms', Modernizr.csstransforms3d);
		hash.set('CSS Transitions', Modernizr.csstransitions);
		
		hash.set('Application Cache', Modernizr.applicationcache);
		hash.set('Canvas', Modernizr.canvas);
		hash.set('Canvas Text', Modernizr.canvastext);
		hash.set('Drag & Drop', Modernizr.draganddrop);
		hash.set('HashChange Event', Modernizr.hashchange);
		hash.set('History Management', Modernizr.history);
		hash.set('HTML5 Audio', untyped Modernizr.audio);
		hash.set('HTML5 Audio Format OGG', Modernizr.audio.ogg);
		hash.set('HTML5 Audio Format MP3', Modernizr.audio.mp3);
		hash.set('HTML5 Audio Format WAV', Modernizr.audio.wav);
		hash.set('HTML5 Audio Format M4A', Modernizr.audio.m4a);
		hash.set('HTML5 Video', untyped Modernizr.video);
		hash.set('HTML5 Video Format OGG', Modernizr.video.ogg);
		hash.set('HTML5 Video Format WebM', Modernizr.video.webm);
		hash.set('HTML5 Video Format H264', Modernizr.video.h264);
		hash.set('Indexed DB', Modernizr.indexeddb);
		hash.set('Local Storage', Modernizr.localstorage);
		hash.set('Cross-window Messaging', Modernizr.postmessage);
		hash.set('Session Storage', Modernizr.sessionstorage);
		hash.set('Web Sockets', Modernizr.websockets);
		hash.set('Web SQL Database', Modernizr.websqldatabase);
		hash.set('Web Workers', Modernizr.webworkers);
		
		
		hash.set('Geolocation', Modernizr.geolocation);
		hash.set('Inline SVG', Modernizr.inlinesvg);
		hash.set('SMIL', Modernizr.smil);
		hash.set('SVG', Modernizr.svg);
		hash.set('SVG Clip Paths', Modernizr.svgclippaths);
		hash.set('Touch Events', Modernizr.touch);
		hash.set('WebGL', Modernizr.webgl);
		
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