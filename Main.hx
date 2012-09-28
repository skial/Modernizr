﻿package ;

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
		
		#if modernizr_non_core
		hash.set('Download Attribute', Modernizr.adownload);
		hash.set('Audio Data', Modernizr.audiodata);
		hash.set('Web Audio', Modernizr.webaudio);
		hash.set('Battery Status', Modernizr.battery);
		hash.set('Low Battery', Modernizr.lowbattery);
		hash.set('Blob Constructor', Modernizr.blobconstructor);
		hash.set('JPEG to data url', Modernizr.todataurljpeg);
		hash.set('WEBP to data url', Modernizr.todataurlwebp);
		hash.set('Content Editable', Modernizr.contenteditable);
		hash.set('Content Security Policy', Modernizr.contentsecuritypolicy);
		hash.set('Context Menu', Modernizr.contextmenu);
		hash.set('Cookies', Modernizr.cookies);
		hash.set('Cross-site HTTP requests', Modernizr.cors);
		hash.set('Background Position Shorthand', Modernizr.bgpositionshorthand);
		hash.set('Background Position XY', Modernizr.bgpositionxy);
		hash.set('Background Repeat - round', Modernizr.bgrepeatround);
		hash.set('Background Repeat - space', Modernizr.bgrepeatspace);
		hash.set('Background Size Cover', Modernizr.bgsizecover);
		hash.set('Box Sizing', Modernizr.boxsizing);
		hash.set('CSS Calc', Modernizr.csscalc);
		hash.set('Cubic Bezier Range', Modernizr.cubicbezierrange);
		hash.set('Display : run-in', Modernizr.displayRunin);
		hash.set('Display : table', Modernizr.displayTable);
		hash.set('CSS Filters', Modernizr.cssfilters);
		hash.set('Soft Hyphens', Modernizr.softhyphens);
		hash.set('Find Hyphens', Modernizr.softhyphensfind);
		hash.set('Last Child', Modernizr.lastchild);
		hash.set('CSS Mask', Modernizr.cssmask);
		hash.set('Media Queries', Modernizr.mediaqueries);
		hash.set('Object Fit', Modernizr.objectFit);
		hash.set('Overflow Scrolling', Modernizr.overflowscrolling);
		hash.set('Pointer Events', Modernizr.pointerevents);
		hash.set('CSS Position Sticky', Modernizr.csspositionsticky);
		hash.set('Regions', Modernizr.regions);
		hash.set('CSS rem unit', Modernizr.cssremunit);
		hash.set('CSS resize', Modernizr.cssresize);
		hash.set('CSS scrollbar', Modernizr.cssscrollbar);
		hash.set('Subpixel Font', Modernizr.subpixelfont);
		hash.set('CSS Supports', Modernizr.supports);
		hash.set('User Select', Modernizr.userselect);
		hash.set('CSS vh unit', Modernizr.cssvhunit);
		hash.set('CSS vmax', Modernizr.cssvmaxunit);
		hash.set('CSS vmin', Modernizr.cssvminunit);
		hash.set('CSS vw unit', Modernizr.cssvwunit);
		hash.set('Custom Protocol Handler', Modernizr.customprotocolhandler);
		hash.set('Dart Support', Modernizr.dart);
		hash.set('Data View', Modernizr.dataview);
		hash.set('Class List', Modernizr.classlist);
		hash.set('Create Element Attributes', Modernizr.createElementAttrs);
		hash.set('Dataset', Modernizr.dataset);
		hash.set('Microdata', Modernizr.microdata);
		hash.set('Data List Element', Modernizr.datalistelem);
		hash.set('Details Element', Modernizr.datalistelem);
		hash.set('Output Element', Modernizr.outputelem);
		hash.set('Progress Bar', Modernizr.progressbar);
		hash.set('Meter', Modernizr.meter);
		hash.set('Ruby Element', Modernizr.ruby);
		hash.set('Time Element', Modernizr.time);
		hash.set('Text Track API', Modernizr.texttrackapi);
		hash.set('Text Track', Modernizr.track);
		hash.set('Emoji', Modernizr.emoji);
		hash.set('Strict Mode', Modernizr.strictmode);
		hash.set('Device Motion', Modernizr.devicemotion);
		hash.set('Device Orientation', Modernizr.deviceorientation);
		hash.set('EXIF Orientation', Modernizr.exifOrientation);
		hash.set('File Reader', Modernizr.filereader);
		hash.set('File System', Modernizr.filesystem);
		hash.set('File Input', Modernizr.fileinput);
		hash.set('Form Attribute', Modernizr.formattribute);
		hash.set('Localized Number', Modernizr.localizedNumber);
		hash.set('Placeholder', Modernizr.placeholder);
		hash.set('Speech Input', Modernizr.speechinput);
		hash.set('Form Validation', Modernizr.formvalidation);
		hash.set('Fullscreen', Modernizr.fullscreen);
		hash.set('Gamepad Support', Modernizr.gamepads);
		hash.set('getUserMedia', Modernizr.getusermedia);
		hash.set('IE8 Compat Mode', Modernizr.ie8compat);
		hash.set('IFrame Sandbox', Modernizr.sandbox);
		hash.set('IFrame Seamless', Modernizr.seamless);
		hash.set('IFrame Srcdoc', Modernizr.srcdoc);
		hash.set('APNG', Modernizr.apng);
		hash.set('Lossless WEBP', Modernizr.webpLossless);
		hash.set('WEBP Support', Modernizr.webp);
		hash.set('JSON Support', Modernizr.json);
		hash.set('<ol> Reversed', Modernizr.olreversed);
		hash.set('MathML', Modernizr.mathml);
		hash.set('Low Bandwidth', Modernizr.lowbandwidth);
		hash.set('Event Source', Modernizr.eventsource);
		hash.set('Xhr2', Modernizr.xhr2);
		hash.set('Notifications', Modernizr.notification);
		hash.set('Performance', Modernizr.performance);
		hash.set('Quota Management', Modernizr.quotamanagement);
		hash.set('Request Animation Frame', Modernizr.raf);
		hash.set('Async <script>', Modernizr.scriptasync);
		hash.set('Defer <script>', Modernizr.scriptdefer);
		hash.set('Scoped Styles', Modernizr.stylescoped);
		hash.set('SVG Filters', Modernizr.svgfilters);
		hash.set('Unicode', Modernizr.unicode);
		hash.set('Data URI', Modernizr.datauri);
		hash.set('Vibrate', Modernizr.vibrate);
		hash.set('Web Intents', Modernizr.webintents);
		hash.set('Binary Websockets', Modernizr.websocketsbinary);
		hash.set('If Window is in IFrame', Modernizr.framed);
		hash.set('Blob Workers', Modernizr.blobworkers);
		hash.set('Data Workers', Modernizr.dataworkers);
		hash.set('Shared Workers', Modernizr.sharedworkers);
		#end
		
		var hxnzr = Lib.document.getElementById('hxnzr');
		var div;
		
		for (n in hash.keys()) {
			
			div = Lib.document.createElement('div');
			div.className += 'prop ';
			div.innerHTML = StringTools.htmlEscape(n);
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