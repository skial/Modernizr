var Hash = function() {
	this.h = { };
};
Hash.__name__ = true;
Hash.prototype = {
	keys: function() {
		var a = [];
		for( var key in this.h ) {
		if(this.h.hasOwnProperty(key)) a.push(key.substr(1));
		}
		return HxOverrides.iter(a);
	}
	,get: function(key) {
		return this.h["$" + key];
	}
	,set: function(key,value) {
		this.h["$" + key] = value;
	}
	,__class__: Hash
}
var HxOverrides = function() { }
HxOverrides.__name__ = true;
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
}
var Main = function() { }
Main.__name__ = true;
Main.main = function() {
	var hash = new Hash();
	hash.set("@font-face",Modernizr.fontface);
	hash.set("Background Size",Modernizr.backgroundsize);
	hash.set("border-image",Modernizr.borderimage);
	hash.set("border-radius",Modernizr.borderradius);
	hash.set("box-shadow",Modernizr.boxshadow);
	hash.set("Flexable Box Model",Modernizr.flexbox);
	hash.set("hsla()",Modernizr.hsla);
	hash.set("Multiple Backgrounds",Modernizr.multiplebgs);
	hash.set("Opacity",Modernizr.opacity);
	hash.set("rgba()",Modernizr.rgba);
	hash.set("text-shadow",Modernizr.textshadow);
	hash.set("CSS Animations",Modernizr.cssanimations);
	hash.set("CSS Columns",Modernizr.csscolumns);
	hash.set("CSS Gradients",Modernizr.cssgradients);
	hash.set("CSS Reflections",Modernizr.cssreflections);
	hash.set("CSS 2D Transforms",Modernizr.csstransforms);
	hash.set("CSS 3D Transforms",Modernizr.csstransforms3d);
	hash.set("CSS Transitions",Modernizr.csstransitions);
	hash.set("Application Cache",Modernizr.applicationcache);
	hash.set("Canvas",Modernizr.canvas);
	hash.set("Canvas Text",Modernizr.canvastext);
	hash.set("Drag & Drop",Modernizr.draganddrop);
	hash.set("HashChange Event",Modernizr.hashchange);
	hash.set("History Management",Modernizr.history);
	hash.set("HTML5 Audio",Modernizr.audio);
	hash.set("HTML5 Audio Format OGG",Modernizr.audio.ogg);
	hash.set("HTML5 Audio Format MP3",Modernizr.audio.mp3);
	hash.set("HTML5 Audio Format WAV",Modernizr.audio.wav);
	hash.set("HTML5 Audio Format M4A",Modernizr.audio.m4a);
	hash.set("HTML5 Video",Modernizr.video);
	hash.set("HTML5 Video Format OGG",Modernizr.video.ogg);
	hash.set("HTML5 Video Format WebM",Modernizr.video.webm);
	hash.set("HTML5 Video Format H264",Modernizr.video.h264);
	hash.set("Indexed DB",Modernizr.indexeddb);
	hash.set("Local Storage",Modernizr.localstorage);
	hash.set("Cross-window Messaging",Modernizr.postmessage);
	hash.set("Session Storage",Modernizr.sessionstorage);
	hash.set("Web Sockets",Modernizr.websockets);
	hash.set("Web SQL Database",Modernizr.websqldatabase);
	hash.set("Web Workers",Modernizr.webworkers);
	hash.set("Geolocation",Modernizr.geolocation);
	hash.set("Inline SVG",Modernizr.inlinesvg);
	hash.set("SMIL",Modernizr.smil);
	hash.set("SVG",Modernizr.svg);
	hash.set("SVG Clip Paths",Modernizr.svgclippaths);
	hash.set("Touch Events",Modernizr.touch);
	hash.set("WebGL",Modernizr.webgl);
	hash.set("Download Attribute",Modernizr.adownload);
	hash.set("Audio Data",Modernizr.audiodata);
	hash.set("Web Audio",Modernizr.webaudio);
	hash.set("Battery Status",Modernizr.battery);
	hash.set("Low Battery",Modernizr.lowbattery);
	hash.set("Blob Constructor",Modernizr.blobconstructor);
	hash.set("JPEG to data url",Modernizr.todataurljpeg);
	hash.set("WEBP to data url",Modernizr.todataurlwebp);
	hash.set("Content Editable",Modernizr.contenteditable);
	hash.set("Content Security Policy",Modernizr.contentsecuritypolicy);
	hash.set("Context Menu",Modernizr.contextmenu);
	hash.set("Cookies",Modernizr.cookies);
	hash.set("Cross-site HTTP requests",Modernizr.cors);
	hash.set("Background Position Shorthand",Modernizr.bgpositionshorthand);
	hash.set("Background Position XY",Modernizr.bgpositionxy);
	hash.set("Background Repeat - round",Modernizr.bgrepeatround);
	hash.set("Background Repeat - space",Modernizr.bgrepeatspace);
	hash.set("Background Size Cover",Modernizr.bgsizecover);
	hash.set("Box Sizing",Modernizr.boxsizing);
	hash.set("CSS Calc",Modernizr.csscalc);
	hash.set("Cubic Bezier Range",Modernizr.cubicbezierrange);
	hash.set("Display : run-in",Modernizr["display-runin"]);
	hash.set("Display : table",Modernizr["display-table"]);
	hash.set("CSS Filters",Modernizr.cssfilters);
	hash.set("Soft Hyphens",Modernizr.softhyphens);
	hash.set("Find Hyphens",Modernizr.softhyphensfind);
	hash.set("Last Child",Modernizr.lastchild);
	hash.set("CSS Mask",Modernizr.cssmask);
	hash.set("Media Queries",Modernizr.mediaqueries);
	hash.set("Object Fit",Modernizr["object-fit"]);
	hash.set("Overflow Scrolling",Modernizr.overflowscrolling);
	hash.set("Pointer Events",Modernizr.pointerevents);
	hash.set("CSS Position Sticky",Modernizr.csspositionsticky);
	hash.set("Regions",Modernizr.regions);
	hash.set("CSS rem unit",Modernizr.cssremunit);
	hash.set("CSS resize",Modernizr.cssresize);
	hash.set("CSS scrollbar",Modernizr.cssscrollbar);
	hash.set("Subpixel Font",Modernizr.subpixelfont);
	hash.set("CSS Supports",Modernizr.supports);
	hash.set("User Select",Modernizr.userselect);
	hash.set("CSS vh unit",Modernizr.cssvhunit);
	hash.set("CSS vmax",Modernizr.cssvmaxunit);
	hash.set("CSS vmin",Modernizr.cssvminunit);
	hash.set("CSS vw unit",Modernizr.cssvwunit);
	hash.set("Custom Protocol Handler",Modernizr.customprotocolhandler);
	hash.set("Dart Support",Modernizr.dart);
	hash.set("Data View",Modernizr.dataview);
	hash.set("Class List",Modernizr.classlist);
	hash.set("Create Element Attributes",Modernizr["createelement-attrs"]);
	hash.set("Dataset",Modernizr.dataset);
	hash.set("Microdata",Modernizr.microdata);
	hash.set("Data List Element",Modernizr.datalistelem);
	hash.set("Details Element",Modernizr.datalistelem);
	hash.set("Output Element",Modernizr.outputelem);
	hash.set("Progress Bar",Modernizr.progressbar);
	hash.set("Meter",Modernizr.meter);
	hash.set("Ruby Element",Modernizr.ruby);
	hash.set("Time Element",Modernizr.time);
	hash.set("Text Track API",Modernizr.texttrackapi);
	hash.set("Text Track",Modernizr.track);
	hash.set("Emoji",Modernizr.emoji);
	hash.set("Strict Mode",Modernizr.strictmode);
	hash.set("Device Motion",Modernizr.devicemotion);
	hash.set("Device Orientation",Modernizr.deviceorientation);
	hash.set("EXIF Orientation",Modernizr["exif-orientation"]);
	hash.set("File Reader",Modernizr.filereader);
	hash.set("File System",Modernizr.filesystem);
	hash.set("File Input",Modernizr.fileinput);
	hash.set("Form Attribute",Modernizr.formattribute);
	hash.set("Localized Number",Modernizr.localizedNumber);
	hash.set("Placeholder",Modernizr.placeholder);
	hash.set("Speech Input",Modernizr.speechinput);
	hash.set("Form Validation",Modernizr.formvalidation);
	hash.set("Fullscreen",Modernizr.fullscreen);
	hash.set("Gamepad Support",Modernizr.gamepads);
	hash.set("getUserMedia",Modernizr.getusermedia);
	hash.set("IE8 Compat Mode",Modernizr.ie8compat);
	hash.set("IFrame Sandbox",Modernizr.sandbox);
	hash.set("IFrame Seamless",Modernizr.seamless);
	hash.set("IFrame Srcdoc",Modernizr.srcdoc);
	hash.set("APNG",Modernizr.apng);
	hash.set("Lossless WEBP",Modernizr["webp-lossless"]);
	hash.set("WEBP Support",Modernizr.webp);
	hash.set("JSON Support",Modernizr.json);
	hash.set("<ol> Reversed",Modernizr.olreversed);
	hash.set("MathML",Modernizr.mathml);
	hash.set("Low Bandwidth",Modernizr.lowbandwidth);
	hash.set("Event Source",Modernizr.eventsource);
	hash.set("Xhr2",Modernizr.xhr2);
	hash.set("Notifications",Modernizr.notification);
	hash.set("Performance",Modernizr.performance);
	hash.set("Quota Management",Modernizr.quotamanagement);
	hash.set("Request Animation Frame",Modernizr.raf);
	hash.set("Async <script>",Modernizr.scriptasync);
	hash.set("Defer <script>",Modernizr.scriptdefer);
	hash.set("Scoped Styles",Modernizr.stylescoped);
	hash.set("SVG Filters",Modernizr.svgfilters);
	hash.set("Unicode",Modernizr.unicode);
	hash.set("Data URI",Modernizr.datauri);
	hash.set("Vibrate",Modernizr.vibrate);
	hash.set("Web Intents",Modernizr.webintents);
	hash.set("Binary Websockets",Modernizr.websocketsbinary);
	hash.set("If Window is in IFrame",Modernizr.framed);
	hash.set("Blob Workers",Modernizr.blobworkers);
	hash.set("Data Workers",Modernizr.dataworkers);
	hash.set("Shared Workers",Modernizr.sharedworkers);
	var hxnzr = js.Lib.document.getElementById("hxnzr");
	var div;
	var $it0 = hash.keys();
	while( $it0.hasNext() ) {
		var n = $it0.next();
		div = js.Lib.document.createElement("div");
		div.className += "prop ";
		div.innerHTML = StringTools.htmlEscape(n);
		hxnzr.appendChild(div);
		if(hash.get(n)) div.className += "good "; else div.className += "bad ";
	}
}
var Std = function() { }
Std.__name__ = true;
Std.string = function(s) {
	return js.Boot.__string_rec(s,"");
}
var StringTools = function() { }
StringTools.__name__ = true;
StringTools.htmlEscape = function(s) {
	return s.split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;");
}
var js = js || {}
js.Boot = function() { }
js.Boot.__name__ = true;
js.Boot.__string_rec = function(o,s) {
	if(o == null) return "null";
	if(s.length >= 5) return "<...>";
	var t = typeof(o);
	if(t == "function" && (o.__name__ || o.__ename__)) t = "object";
	switch(t) {
	case "object":
		if(o instanceof Array) {
			if(o.__enum__) {
				if(o.length == 2) return o[0];
				var str = o[0] + "(";
				s += "\t";
				var _g1 = 2, _g = o.length;
				while(_g1 < _g) {
					var i = _g1++;
					if(i != 2) str += "," + js.Boot.__string_rec(o[i],s); else str += js.Boot.__string_rec(o[i],s);
				}
				return str + ")";
			}
			var l = o.length;
			var i;
			var str = "[";
			s += "\t";
			var _g = 0;
			while(_g < l) {
				var i1 = _g++;
				str += (i1 > 0?",":"") + js.Boot.__string_rec(o[i1],s);
			}
			str += "]";
			return str;
		}
		var tostr;
		try {
			tostr = o.toString;
		} catch( e ) {
			return "???";
		}
		if(tostr != null && tostr != Object.toString) {
			var s2 = o.toString();
			if(s2 != "[object Object]") return s2;
		}
		var k = null;
		var str = "{\n";
		s += "\t";
		var hasp = o.hasOwnProperty != null;
		for( var k in o ) { ;
		if(hasp && !o.hasOwnProperty(k)) {
			continue;
		}
		if(k == "prototype" || k == "__class__" || k == "__super__" || k == "__interfaces__" || k == "__properties__") {
			continue;
		}
		if(str.length != 2) str += ", \n";
		str += s + k + " : " + js.Boot.__string_rec(o[k],s);
		}
		s = s.substring(1);
		str += "\n" + s + "}";
		return str;
	case "function":
		return "<function>";
	case "string":
		return o;
	default:
		return String(o);
	}
}
js.Boot.__interfLoop = function(cc,cl) {
	if(cc == null) return false;
	if(cc == cl) return true;
	var intf = cc.__interfaces__;
	if(intf != null) {
		var _g1 = 0, _g = intf.length;
		while(_g1 < _g) {
			var i = _g1++;
			var i1 = intf[i];
			if(i1 == cl || js.Boot.__interfLoop(i1,cl)) return true;
		}
	}
	return js.Boot.__interfLoop(cc.__super__,cl);
}
js.Boot.__instanceof = function(o,cl) {
	try {
		if(o instanceof cl) {
			if(cl == Array) return o.__enum__ == null;
			return true;
		}
		if(js.Boot.__interfLoop(o.__class__,cl)) return true;
	} catch( e ) {
		if(cl == null) return false;
	}
	switch(cl) {
	case Int:
		return Math.ceil(o%2147483648.0) === o;
	case Float:
		return typeof(o) == "number";
	case Bool:
		return o === true || o === false;
	case String:
		return typeof(o) == "string";
	case Dynamic:
		return true;
	default:
		if(o == null) return false;
		if(cl == Class && o.__name__ != null) return true; else null;
		if(cl == Enum && o.__ename__ != null) return true; else null;
		return o.__enum__ == cl;
	}
}
js.Boot.__cast = function(o,t) {
	if(js.Boot.__instanceof(o,t)) return o; else throw "Cannot cast " + Std.string(o) + " to " + Std.string(t);
}
js.Lib = function() { }
js.Lib.__name__ = true;
window.Modernizr = Modernizr;
String.prototype.__class__ = String;
String.__name__ = true;
Array.prototype.__class__ = Array;
Array.__name__ = true;
var Int = { __name__ : ["Int"]};
var Dynamic = { __name__ : ["Dynamic"]};
var Float = Number;
Float.__name__ = ["Float"];
var Bool = Boolean;
Bool.__ename__ = ["Bool"];
var Class = { __name__ : ["Class"]};
var Enum = { };
if(typeof document != "undefined") js.Lib.document = document;
if(typeof window != "undefined") {
	js.Lib.window = window;
	js.Lib.window.onerror = function(msg,url,line) {
		var f = js.Lib.onerror;
		if(f == null) return false;
		return f(msg,[url + ":" + line]);
	};
}
Main.main();
