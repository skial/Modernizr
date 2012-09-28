var Hash = function() {
	this.h = { };
};
Hash.__name__ = true;
Hash.prototype = {
	toString: function() {
		var s = new StringBuf();
		s.b += Std.string("{");
		var it = this.keys();
		while( it.hasNext() ) {
			var i = it.next();
			s.b += Std.string(i);
			s.b += Std.string(" => ");
			s.b += Std.string(Std.string(this.get(i)));
			if(it.hasNext()) s.b += Std.string(", ");
		}
		s.b += Std.string("}");
		return s.b;
	}
	,iterator: function() {
		return { ref : this.h, it : this.keys(), hasNext : function() {
			return this.it.hasNext();
		}, next : function() {
			var i = this.it.next();
			return this.ref["$" + i];
		}};
	}
	,keys: function() {
		var a = [];
		for( var key in this.h ) {
		if(this.h.hasOwnProperty(key)) a.push(key.substr(1));
		}
		return HxOverrides.iter(a);
	}
	,remove: function(key) {
		key = "$" + key;
		if(!this.h.hasOwnProperty(key)) return false;
		delete(this.h[key]);
		return true;
	}
	,exists: function(key) {
		return this.h.hasOwnProperty("$" + key);
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
HxOverrides.dateStr = function(date) {
	var m = date.getMonth() + 1;
	var d = date.getDate();
	var h = date.getHours();
	var mi = date.getMinutes();
	var s = date.getSeconds();
	return date.getFullYear() + "-" + (m < 10?"0" + m:"" + m) + "-" + (d < 10?"0" + d:"" + d) + " " + (h < 10?"0" + h:"" + h) + ":" + (mi < 10?"0" + mi:"" + mi) + ":" + (s < 10?"0" + s:"" + s);
}
HxOverrides.strDate = function(s) {
	switch(s.length) {
	case 8:
		var k = s.split(":");
		var d = new Date();
		d.setTime(0);
		d.setUTCHours(k[0]);
		d.setUTCMinutes(k[1]);
		d.setUTCSeconds(k[2]);
		return d;
	case 10:
		var k = s.split("-");
		return new Date(k[0],k[1] - 1,k[2],0,0,0);
	case 19:
		var k = s.split(" ");
		var y = k[0].split("-");
		var t = k[1].split(":");
		return new Date(y[0],y[1] - 1,y[2],t[0],t[1],t[2]);
	default:
		throw "Invalid date format : " + s;
	}
}
HxOverrides.cca = function(s,index) {
	var x = s.charCodeAt(index);
	if(x != x) return undefined;
	return x;
}
HxOverrides.substr = function(s,pos,len) {
	if(pos != null && pos != 0 && len != null && len < 0) return "";
	if(len == null) len = s.length;
	if(pos < 0) {
		pos = s.length + pos;
		if(pos < 0) pos = 0;
	} else if(len < 0) len = s.length + len - pos;
	return s.substr(pos,len);
}
HxOverrides.remove = function(a,obj) {
	var i = 0;
	var l = a.length;
	while(i < l) {
		if(a[i] == obj) {
			a.splice(i,1);
			return true;
		}
		i++;
	}
	return false;
}
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
}
var IntIter = function(min,max) {
	this.min = min;
	this.max = max;
};
IntIter.__name__ = true;
IntIter.prototype = {
	next: function() {
		return this.min++;
	}
	,hasNext: function() {
		return this.min < this.max;
	}
	,__class__: IntIter
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
Std["is"] = function(v,t) {
	return js.Boot.__instanceof(v,t);
}
Std.string = function(s) {
	return js.Boot.__string_rec(s,"");
}
Std["int"] = function(x) {
	return x | 0;
}
Std.parseInt = function(x) {
	var v = parseInt(x,10);
	if(v == 0 && (HxOverrides.cca(x,1) == 120 || HxOverrides.cca(x,1) == 88)) v = parseInt(x);
	if(isNaN(v)) return null;
	return v;
}
Std.parseFloat = function(x) {
	return parseFloat(x);
}
Std.random = function(x) {
	return Math.floor(Math.random() * x);
}
var StringBuf = function() {
	this.b = "";
};
StringBuf.__name__ = true;
StringBuf.prototype = {
	toString: function() {
		return this.b;
	}
	,addSub: function(s,pos,len) {
		this.b += HxOverrides.substr(s,pos,len);
	}
	,addChar: function(c) {
		this.b += String.fromCharCode(c);
	}
	,add: function(x) {
		this.b += Std.string(x);
	}
	,__class__: StringBuf
}
var StringTools = function() { }
StringTools.__name__ = true;
StringTools.urlEncode = function(s) {
	return encodeURIComponent(s);
}
StringTools.urlDecode = function(s) {
	return decodeURIComponent(s.split("+").join(" "));
}
StringTools.htmlEscape = function(s) {
	return s.split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;");
}
StringTools.htmlUnescape = function(s) {
	return s.split("&gt;").join(">").split("&lt;").join("<").split("&amp;").join("&");
}
StringTools.startsWith = function(s,start) {
	return s.length >= start.length && HxOverrides.substr(s,0,start.length) == start;
}
StringTools.endsWith = function(s,end) {
	var elen = end.length;
	var slen = s.length;
	return slen >= elen && HxOverrides.substr(s,slen - elen,elen) == end;
}
StringTools.isSpace = function(s,pos) {
	var c = HxOverrides.cca(s,pos);
	return c >= 9 && c <= 13 || c == 32;
}
StringTools.ltrim = function(s) {
	var l = s.length;
	var r = 0;
	while(r < l && StringTools.isSpace(s,r)) r++;
	if(r > 0) return HxOverrides.substr(s,r,l - r); else return s;
}
StringTools.rtrim = function(s) {
	var l = s.length;
	var r = 0;
	while(r < l && StringTools.isSpace(s,l - r - 1)) r++;
	if(r > 0) return HxOverrides.substr(s,0,l - r); else return s;
}
StringTools.trim = function(s) {
	return StringTools.ltrim(StringTools.rtrim(s));
}
StringTools.rpad = function(s,c,l) {
	var sl = s.length;
	var cl = c.length;
	while(sl < l) if(l - sl < cl) {
		s += HxOverrides.substr(c,0,l - sl);
		sl = l;
	} else {
		s += c;
		sl += cl;
	}
	return s;
}
StringTools.lpad = function(s,c,l) {
	var ns = "";
	var sl = s.length;
	if(sl >= l) return s;
	var cl = c.length;
	while(sl < l) if(l - sl < cl) {
		ns += HxOverrides.substr(c,0,l - sl);
		sl = l;
	} else {
		ns += c;
		sl += cl;
	}
	return ns + s;
}
StringTools.replace = function(s,sub,by) {
	return s.split(sub).join(by);
}
StringTools.hex = function(n,digits) {
	var s = "";
	var hexChars = "0123456789ABCDEF";
	do {
		s = hexChars.charAt(n & 15) + s;
		n >>>= 4;
	} while(n > 0);
	if(digits != null) while(s.length < digits) s = "0" + s;
	return s;
}
StringTools.fastCodeAt = function(s,index) {
	return s.charCodeAt(index);
}
StringTools.isEOF = function(c) {
	return c != c;
}
var js = js || {}
js.Boot = function() { }
js.Boot.__name__ = true;
js.Boot.__unhtml = function(s) {
	return s.split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;");
}
js.Boot.__trace = function(v,i) {
	var msg = i != null?i.fileName + ":" + i.lineNumber + ": ":"";
	msg += js.Boot.__string_rec(v,"");
	var d;
	if(typeof(document) != "undefined" && (d = document.getElementById("haxe:trace")) != null) d.innerHTML += js.Boot.__unhtml(msg) + "<br/>"; else if(typeof(console) != "undefined" && console.log != null) console.log(msg);
}
js.Boot.__clear_trace = function() {
	var d = document.getElementById("haxe:trace");
	if(d != null) d.innerHTML = "";
}
js.Boot.isClass = function(o) {
	return o.__name__;
}
js.Boot.isEnum = function(e) {
	return e.__ename__;
}
js.Boot.getClass = function(o) {
	return o.__class__;
}
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
js.Lib.debug = function() {
	debugger;
}
js.Lib.alert = function(v) {
	alert(js.Boot.__string_rec(v,""));
}
js.Lib.eval = function(code) {
	return eval(code);
}
js.Lib.setErrorHandler = function(f) {
	js.Lib.onerror = f;
}
if(Array.prototype.indexOf) HxOverrides.remove = function(a,o) {
	var i = a.indexOf(o);
	if(i == -1) return false;
	a.splice(i,1);
	return true;
}; else null;
Math.__name__ = ["Math"];
Math.NaN = Number.NaN;
Math.NEGATIVE_INFINITY = Number.NEGATIVE_INFINITY;
Math.POSITIVE_INFINITY = Number.POSITIVE_INFINITY;
Math.isFinite = function(i) {
	return isFinite(i);
};
Math.isNaN = function(i) {
	return isNaN(i);
};
window.Modernizr = Modernizr;
String.prototype.__class__ = String;
String.__name__ = true;
Array.prototype.__class__ = Array;
Array.__name__ = true;
Date.prototype.__class__ = Date;
Date.__name__ = ["Date"];
var Int = { __name__ : ["Int"]};
var Dynamic = { __name__ : ["Dynamic"]};
var Float = Number;
Float.__name__ = ["Float"];
var Bool = Boolean;
Bool.__ename__ = ["Bool"];
var Class = { __name__ : ["Class"]};
var Enum = { };
var Void = { __ename__ : ["Void"]};
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
