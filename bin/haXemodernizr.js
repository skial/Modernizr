$estr = function() { return js.Boot.__string_rec(this,''); }
if(typeof js=='undefined') js = {}
js.Boot = function() { }
js.Boot.__name__ = ["js","Boot"];
js.Boot.__unhtml = function(s) {
	return s.split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;");
}
js.Boot.__trace = function(v,i) {
	var msg = i != null?i.fileName + ":" + i.lineNumber + ": ":"";
	msg += js.Boot.__unhtml(js.Boot.__string_rec(v,"")) + "<br/>";
	var d = document.getElementById("haxe:trace");
	if(d == null) alert("No haxe:trace element defined\n" + msg); else d.innerHTML += msg;
}
js.Boot.__clear_trace = function() {
	var d = document.getElementById("haxe:trace");
	if(d != null) d.innerHTML = "";
}
js.Boot.__closure = function(o,f) {
	var m = o[f];
	if(m == null) return null;
	var f1 = function() {
		return m.apply(o,arguments);
	};
	f1.scope = o;
	f1.method = m;
	return f1;
}
js.Boot.__string_rec = function(o,s) {
	if(o == null) return "null";
	if(s.length >= 5) return "<...>";
	var t = typeof(o);
	if(t == "function" && (o.__name__ != null || o.__ename__ != null)) t = "object";
	switch(t) {
	case "object":
		if(o instanceof Array) {
			if(o.__enum__ != null) {
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
		if(k == "prototype" || k == "__class__" || k == "__super__" || k == "__interfaces__") {
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
		return o.__enum__ == cl || cl == Class && o.__name__ != null || cl == Enum && o.__ename__ != null;
	}
}
js.Boot.__init = function() {
	js.Lib.isIE = typeof document!='undefined' && document.all != null && typeof window!='undefined' && window.opera == null;
	js.Lib.isOpera = typeof window!='undefined' && window.opera != null;
	Array.prototype.copy = Array.prototype.slice;
	Array.prototype.insert = function(i,x) {
		this.splice(i,0,x);
	};
	Array.prototype.remove = Array.prototype.indexOf?function(obj) {
		var idx = this.indexOf(obj);
		if(idx == -1) return false;
		this.splice(idx,1);
		return true;
	}:function(obj) {
		var i = 0;
		var l = this.length;
		while(i < l) {
			if(this[i] == obj) {
				this.splice(i,1);
				return true;
			}
			i++;
		}
		return false;
	};
	Array.prototype.iterator = function() {
		return { cur : 0, arr : this, hasNext : function() {
			return this.cur < this.arr.length;
		}, next : function() {
			return this.arr[this.cur++];
		}};
	};
	if(String.prototype.cca == null) String.prototype.cca = String.prototype.charCodeAt;
	String.prototype.charCodeAt = function(i) {
		var x = this.cca(i);
		if(x != x) return null;
		return x;
	};
	var oldsub = String.prototype.substr;
	String.prototype.substr = function(pos,len) {
		if(pos != null && pos != 0 && len != null && len < 0) return "";
		if(len == null) len = this.length;
		if(pos < 0) {
			pos = this.length + pos;
			if(pos < 0) pos = 0;
		} else if(len < 0) len = this.length + len - pos;
		return oldsub.apply(this,[pos,len]);
	};
	$closure = js.Boot.__closure;
}
js.Boot.prototype.__class__ = js.Boot;
js.Lib = function() { }
js.Lib.__name__ = ["js","Lib"];
js.Lib.isIE = null;
js.Lib.isOpera = null;
js.Lib.document = null;
js.Lib.window = null;
js.Lib.alert = function(v) {
	alert(js.Boot.__string_rec(v,""));
}
js.Lib.eval = function(code) {
	return eval(code);
}
js.Lib.setErrorHandler = function(f) {
	js.Lib.onerror = f;
}
js.Lib.prototype.__class__ = js.Lib;
if(typeof haxe=='undefined') haxe = {}
haxe.Log = function() { }
haxe.Log.__name__ = ["haxe","Log"];
haxe.Log.trace = function(v,infos) {
	js.Boot.__trace(v,infos);
}
haxe.Log.clear = function() {
	js.Boot.__clear_trace();
}
haxe.Log.prototype.__class__ = haxe.Log;
Main = function() { }
Main.__name__ = ["Main"];
Main.main = function() {
	haxe.Log.trace("@font-face: \t\t\t\t\t" + Modernizr.fontface,{ fileName : "Main.hx", lineNumber : 14, className : "Main", methodName : "main"});
	haxe.Log.trace("canvas: \t\t\t\t\t\t" + Modernizr.canvas,{ fileName : "Main.hx", lineNumber : 15, className : "Main", methodName : "main"});
	haxe.Log.trace("canvas text: \t\t\t\t" + Modernizr.canvastext,{ fileName : "Main.hx", lineNumber : 16, className : "Main", methodName : "main"});
	haxe.Log.trace("webgl:\t\t\t\t\t\t" + Modernizr.webgl,{ fileName : "Main.hx", lineNumber : 17, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 audio: \t\t\t\t" + Modernizr.audio,{ fileName : "Main.hx", lineNumber : 18, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 audio format ogg: \t\t" + Modernizr.audio.ogg,{ fileName : "Main.hx", lineNumber : 19, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 audio format wav: \t\t" + Modernizr.audio.wav,{ fileName : "Main.hx", lineNumber : 20, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 audio format mp3: \t\t" + Modernizr.audio.mp3,{ fileName : "Main.hx", lineNumber : 21, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 audio format m4a: \t\t" + Modernizr.audio.m4a,{ fileName : "Main.hx", lineNumber : 22, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 video: \t\t\t\t" + Modernizr.video,{ fileName : "Main.hx", lineNumber : 23, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 video format ogg: \t\t" + Modernizr.video.ogg,{ fileName : "Main.hx", lineNumber : 24, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 video format h264: \t" + Modernizr.video.h264,{ fileName : "Main.hx", lineNumber : 25, className : "Main", methodName : "main"});
	haxe.Log.trace("rgba: \t\t\t\t\t\t" + Modernizr.rgba,{ fileName : "Main.hx", lineNumber : 26, className : "Main", methodName : "main"});
	haxe.Log.trace("hsla: \t\t\t\t\t\t" + Modernizr.hsla,{ fileName : "Main.hx", lineNumber : 27, className : "Main", methodName : "main"});
	haxe.Log.trace("border-image: \t\t\t\t" + Modernizr.borderimage,{ fileName : "Main.hx", lineNumber : 28, className : "Main", methodName : "main"});
	haxe.Log.trace("border-radius: \t\t\t\t" + Modernizr.borderradius,{ fileName : "Main.hx", lineNumber : 29, className : "Main", methodName : "main"});
	haxe.Log.trace("box-shadow: \t\t\t\t\t" + Modernizr.boxshadow,{ fileName : "Main.hx", lineNumber : 30, className : "Main", methodName : "main"});
	haxe.Log.trace("text-shadow:\t\t\t\t\t" + Modernizr.textshadow,{ fileName : "Main.hx", lineNumber : 31, className : "Main", methodName : "main"});
	haxe.Log.trace("multiple-backgrounds: \t\t" + Modernizr.multiplebgs,{ fileName : "Main.hx", lineNumber : 32, className : "Main", methodName : "main"});
	haxe.Log.trace("backgroundsize: \t\t\t\t" + Modernizr.backgroundsize,{ fileName : "Main.hx", lineNumber : 33, className : "Main", methodName : "main"});
	haxe.Log.trace("opacity: \t\t\t\t\t" + Modernizr.opacity,{ fileName : "Main.hx", lineNumber : 34, className : "Main", methodName : "main"});
	haxe.Log.trace("css animations: \t\t\t\t" + Modernizr.cssanimations,{ fileName : "Main.hx", lineNumber : 35, className : "Main", methodName : "main"});
	haxe.Log.trace("css columns: \t\t\t\t" + Modernizr.csscolumns,{ fileName : "Main.hx", lineNumber : 36, className : "Main", methodName : "main"});
	haxe.Log.trace("css gradients: \t\t\t\t" + Modernizr.cssgradients,{ fileName : "Main.hx", lineNumber : 37, className : "Main", methodName : "main"});
	haxe.Log.trace("css reflections: \t\t\t" + Modernizr.cssreflections,{ fileName : "Main.hx", lineNumber : 38, className : "Main", methodName : "main"});
	haxe.Log.trace("css 2d transforms: \t\t\t" + Modernizr.csstransforms,{ fileName : "Main.hx", lineNumber : 39, className : "Main", methodName : "main"});
	haxe.Log.trace("css 3d transforms: \t\t\t" + Modernizr.csstransforms3d,{ fileName : "Main.hx", lineNumber : 40, className : "Main", methodName : "main"});
	haxe.Log.trace("flexable box model:\t\t\t" + Modernizr.flexbox,{ fileName : "Main.hx", lineNumber : 41, className : "Main", methodName : "main"});
	haxe.Log.trace("css transitions: \t\t\t" + Modernizr.csstransitions,{ fileName : "Main.hx", lineNumber : 42, className : "Main", methodName : "main"});
	haxe.Log.trace("geolocation: \t\t\t\t" + Modernizr.geolocation,{ fileName : "Main.hx", lineNumber : 43, className : "Main", methodName : "main"});
	haxe.Log.trace(Modernizr.inputtypes,{ fileName : "Main.hx", lineNumber : 44, className : "Main", methodName : "main"});
	haxe.Log.trace(Modernizr.input,{ fileName : "Main.hx", lineNumber : 45, className : "Main", methodName : "main"});
	haxe.Log.trace("local storage: \t\t\t\t" + Modernizr.localstorage,{ fileName : "Main.hx", lineNumber : 46, className : "Main", methodName : "main"});
	haxe.Log.trace("session storage: \t\t\t" + Modernizr.sessionstorage,{ fileName : "Main.hx", lineNumber : 47, className : "Main", methodName : "main"});
	haxe.Log.trace("web workers: \t\t\t\t" + Modernizr.webworkers,{ fileName : "Main.hx", lineNumber : 48, className : "Main", methodName : "main"});
	haxe.Log.trace("application cache: \t\t\t" + Modernizr.applicationcache,{ fileName : "Main.hx", lineNumber : 49, className : "Main", methodName : "main"});
	haxe.Log.trace("svg: \t\t\t\t\t\t" + Modernizr.svg,{ fileName : "Main.hx", lineNumber : 50, className : "Main", methodName : "main"});
	haxe.Log.trace("inline svg:\t\t\t\t\t" + Modernizr.inlinesvg,{ fileName : "Main.hx", lineNumber : 51, className : "Main", methodName : "main"});
	haxe.Log.trace("svg clip paths: \t\t\t\t" + Modernizr.svgclippaths,{ fileName : "Main.hx", lineNumber : 52, className : "Main", methodName : "main"});
	haxe.Log.trace("smil: \t\t\t\t\t\t" + Modernizr.smil,{ fileName : "Main.hx", lineNumber : 53, className : "Main", methodName : "main"});
	haxe.Log.trace("web sql database: \t\t\t" + Modernizr.websqldatabase,{ fileName : "Main.hx", lineNumber : 54, className : "Main", methodName : "main"});
	haxe.Log.trace("indexed db: \t\t\t\t\t" + Modernizr.indexeddb,{ fileName : "Main.hx", lineNumber : 55, className : "Main", methodName : "main"});
	haxe.Log.trace("web sockets: \t\t\t\t" + Modernizr.websockets,{ fileName : "Main.hx", lineNumber : 56, className : "Main", methodName : "main"});
	haxe.Log.trace("hashchange event: \t\t\t" + Modernizr.hashchange,{ fileName : "Main.hx", lineNumber : 57, className : "Main", methodName : "main"});
	haxe.Log.trace("history management: \t\t\t" + Modernizr.historymanagement,{ fileName : "Main.hx", lineNumber : 58, className : "Main", methodName : "main"});
	haxe.Log.trace("drag and drop: \t\t\t\t" + Modernizr.draganddrop,{ fileName : "Main.hx", lineNumber : 59, className : "Main", methodName : "main"});
	haxe.Log.trace("cross window messaging:\t \t" + Modernizr.crosswindowmessaging,{ fileName : "Main.hx", lineNumber : 60, className : "Main", methodName : "main"});
	haxe.Log.trace("touch:\t\t\t\t\t\t" + Modernizr.touch,{ fileName : "Main.hx", lineNumber : 61, className : "Main", methodName : "main"});
}
Main.prototype.__class__ = Main;
Std = function() { }
Std.__name__ = ["Std"];
Std["is"] = function(v,t) {
	return js.Boot.__instanceof(v,t);
}
Std.string = function(s) {
	return js.Boot.__string_rec(s,"");
}
Std["int"] = function(x) {
	if(x < 0) return Math.ceil(x);
	return Math.floor(x);
}
Std.parseInt = function(x) {
	var v = parseInt(x,10);
	if(v == 0 && x.charCodeAt(1) == 120) v = parseInt(x);
	if(isNaN(v)) return null;
	return v;
}
Std.parseFloat = function(x) {
	return parseFloat(x);
}
Std.random = function(x) {
	return Math.floor(Math.random() * x);
}
Std.prototype.__class__ = Std;
IntIter = function(min,max) {
	if( min === $_ ) return;
	this.min = min;
	this.max = max;
}
IntIter.__name__ = ["IntIter"];
IntIter.prototype.min = null;
IntIter.prototype.max = null;
IntIter.prototype.hasNext = function() {
	return this.min < this.max;
}
IntIter.prototype.next = function() {
	return this.min++;
}
IntIter.prototype.__class__ = IntIter;
$_ = {}
js.Boot.__res = {}
js.Boot.__init();
{
	js.Lib.document = document;
	js.Lib.window = window;
	onerror = function(msg,url,line) {
		var f = js.Lib.onerror;
		if( f == null )
			return false;
		return f(msg,[url+":"+line]);
	}
}
{
	String.prototype.__class__ = String;
	String.__name__ = ["String"];
	Array.prototype.__class__ = Array;
	Array.__name__ = ["Array"];
	Int = { __name__ : ["Int"]};
	Dynamic = { __name__ : ["Dynamic"]};
	Float = Number;
	Float.__name__ = ["Float"];
	Bool = { __ename__ : ["Bool"]};
	Class = { __name__ : ["Class"]};
	Enum = { };
	Void = { __ename__ : ["Void"]};
}
// Modernizr v1.7  www.modernizr.com
window.Modernizr=function(a,b,c){function G(){e.input=function(a){for(var b=0,c=a.length;b<c;b++)t[a[b]]=!!(a[b]in l);return t}("autocomplete autofocus list placeholder max min multiple pattern required step".split(" ")),e.inputtypes=function(a){for(var d=0,e,f,h,i=a.length;d<i;d++)l.setAttribute("type",f=a[d]),e=l.type!=="text",e&&(l.value=m,l.style.cssText="position:absolute;visibility:hidden;",/^range$/.test(f)&&l.style.WebkitAppearance!==c?(g.appendChild(l),h=b.defaultView,e=h.getComputedStyle&&h.getComputedStyle(l,null).WebkitAppearance!=="textfield"&&l.offsetHeight!==0,g.removeChild(l)):/^(search|tel)$/.test(f)||(/^(url|email)$/.test(f)?e=l.checkValidity&&l.checkValidity()===!1:/^color$/.test(f)?(g.appendChild(l),g.offsetWidth,e=l.value!=m,g.removeChild(l)):e=l.value!=m)),s[a[d]]=!!e;return s}("search tel url email datetime date month week time datetime-local number range color".split(" "))}function F(a,b){var c=a.charAt(0).toUpperCase()+a.substr(1),d=(a+" "+p.join(c+" ")+c).split(" ");return!!E(d,b)}function E(a,b){for(var d in a)if(k[a[d]]!==c&&(!b||b(a[d],j)))return!0}function D(a,b){return(""+a).indexOf(b)!==-1}function C(a,b){return typeof a===b}function B(a,b){return A(o.join(a+";")+(b||""))}function A(a){k.cssText=a}var d="1.7",e={},f=!0,g=b.documentElement,h=b.head||b.getElementsByTagName("head")[0],i="modernizr",j=b.createElement(i),k=j.style,l=b.createElement("input"),m=":)",n=Object.prototype.toString,o=" -webkit- -moz- -o- -ms- -khtml- ".split(" "),p="Webkit Moz O ms Khtml".split(" "),q={svg:"http://www.w3.org/2000/svg"},r={},s={},t={},u=[],v,w=function(a){var c=b.createElement("style"),d=b.createElement("div"),e;c.textContent=a+"{#modernizr{height:3px}}",h.appendChild(c),d.id="modernizr",g.appendChild(d),e=d.offsetHeight===3,c.parentNode.removeChild(c),d.parentNode.removeChild(d);return!!e},x=function(){function d(d,e){e=e||b.createElement(a[d]||"div");var f=(d="on"+d)in e;f||(e.setAttribute||(e=b.createElement("div")),e.setAttribute&&e.removeAttribute&&(e.setAttribute(d,""),f=C(e[d],"function"),C(e[d],c)||(e[d]=c),e.removeAttribute(d))),e=null;return f}var a={select:"input",change:"input",submit:"form",reset:"form",error:"img",load:"img",abort:"img"};return d}(),y=({}).hasOwnProperty,z;C(y,c)||C(y.call,c)?z=function(a,b){return b in a&&C(a.constructor.prototype[b],c)}:z=function(a,b){return y.call(a,b)},r.flexbox=function(){function c(a,b,c,d){a.style.cssText=o.join(b+":"+c+";")+(d||"")}function a(a,b,c,d){b+=":",a.style.cssText=(b+o.join(c+";"+b)).slice(0,-b.length)+(d||"")}var d=b.createElement("div"),e=b.createElement("div");a(d,"display","box","width:42px;padding:0;"),c(e,"box-flex","1","width:10px;"),d.appendChild(e),g.appendChild(d);var f=e.offsetWidth===42;d.removeChild(e),g.removeChild(d);return f},r.canvas=function(){var a=b.createElement("canvas");return a.getContext&&a.getContext("2d")},r.canvastext=function(){return e.canvas&&C(b.createElement("canvas").getContext("2d").fillText,"function")},r.webgl=function(){return!!a.WebGLRenderingContext},r.touch=function(){return"ontouchstart"in a||w("@media ("+o.join("touch-enabled),(")+"modernizr)")},r.geolocation=function(){return!!navigator.geolocation},r.postmessage=function(){return!!a.postMessage},r.websqldatabase=function(){var b=!!a.openDatabase;return b},r.indexedDB=function(){for(var b=-1,c=p.length;++b<c;){var d=p[b].toLowerCase();if(a[d+"_indexedDB"]||a[d+"IndexedDB"])return!0}return!1},r.hashchange=function(){return x("hashchange",a)&&(b.documentMode===c||b.documentMode>7)},r.history=function(){return !!(a.history&&history.pushState)},r.draganddrop=function(){return x("dragstart")&&x("drop")},r.websockets=function(){return"WebSocket"in a},r.rgba=function(){A("background-color:rgba(150,255,150,.5)");return D(k.backgroundColor,"rgba")},r.hsla=function(){A("background-color:hsla(120,40%,100%,.5)");return D(k.backgroundColor,"rgba")||D(k.backgroundColor,"hsla")},r.multiplebgs=function(){A("background:url(//:),url(//:),red url(//:)");return(new RegExp("(url\\s*\\(.*?){3}")).test(k.background)},r.backgroundsize=function(){return F("backgroundSize")},r.borderimage=function(){return F("borderImage")},r.borderradius=function(){return F("borderRadius","",function(a){return D(a,"orderRadius")})},r.boxshadow=function(){return F("boxShadow")},r.textshadow=function(){return b.createElement("div").style.textShadow===""},r.opacity=function(){B("opacity:.55");return/^0.55$/.test(k.opacity)},r.cssanimations=function(){return F("animationName")},r.csscolumns=function(){return F("columnCount")},r.cssgradients=function(){var a="background-image:",b="gradient(linear,left top,right bottom,from(#9f9),to(white));",c="linear-gradient(left top,#9f9, white);";A((a+o.join(b+a)+o.join(c+a)).slice(0,-a.length));return D(k.backgroundImage,"gradient")},r.cssreflections=function(){return F("boxReflect")},r.csstransforms=function(){return!!E(["transformProperty","WebkitTransform","MozTransform","OTransform","msTransform"])},r.csstransforms3d=function(){var a=!!E(["perspectiveProperty","WebkitPerspective","MozPerspective","OPerspective","msPerspective"]);a&&"webkitPerspective"in g.style&&(a=w("@media ("+o.join("transform-3d),(")+"modernizr)"));return a},r.csstransitions=function(){return F("transitionProperty")},r.fontface=function(){var a,c,d=h||g,e=b.createElement("style"),f=b.implementation||{hasFeature:function(){return!1}};e.type="text/css",d.insertBefore(e,d.firstChild),a=e.sheet||e.styleSheet;var i=f.hasFeature("CSS2","")?function(b){if(!a||!b)return!1;var c=!1;try{a.insertRule(b,0),c=/src/i.test(a.cssRules[0].cssText),a.deleteRule(a.cssRules.length-1)}catch(d){}return c}:function(b){if(!a||!b)return!1;a.cssText=b;return a.cssText.length!==0&&/src/i.test(a.cssText)&&a.cssText.replace(/\r+|\n+/g,"").indexOf(b.split(" ")[0])===0};c=i('@font-face { font-family: "font"; src: url(data:,); }'),d.removeChild(e);return c},r.video=function(){var a=b.createElement("video"),c=!!a.canPlayType;if(c){c=new Boolean(c),c.ogg=a.canPlayType('video/ogg; codecs="theora"');var d='video/mp4; codecs="avc1.42E01E';c.h264=a.canPlayType(d+'"')||a.canPlayType(d+', mp4a.40.2"'),c.webm=a.canPlayType('video/webm; codecs="vp8, vorbis"')}return c},r.audio=function(){var a=b.createElement("audio"),c=!!a.canPlayType;c&&(c=new Boolean(c),c.ogg=a.canPlayType('audio/ogg; codecs="vorbis"'),c.mp3=a.canPlayType("audio/mpeg;"),c.wav=a.canPlayType('audio/wav; codecs="1"'),c.m4a=a.canPlayType("audio/x-m4a;")||a.canPlayType("audio/aac;"));return c},r.localstorage=function(){try{return!!localStorage.getItem}catch(a){return!1}},r.sessionstorage=function(){try{return!!sessionStorage.getItem}catch(a){return!1}},r.webWorkers=function(){return!!a.Worker},r.applicationcache=function(){return!!a.applicationCache},r.svg=function(){return!!b.createElementNS&&!!b.createElementNS(q.svg,"svg").createSVGRect},r.inlinesvg=function(){var a=b.createElement("div");a.innerHTML="<svg/>";return(a.firstChild&&a.firstChild.namespaceURI)==q.svg},r.smil=function(){return!!b.createElementNS&&/SVG/.test(n.call(b.createElementNS(q.svg,"animate")))},r.svgclippaths=function(){return!!b.createElementNS&&/SVG/.test(n.call(b.createElementNS(q.svg,"clipPath")))};for(var H in r)z(r,H)&&(v=H.toLowerCase(),e[v]=r[H](),u.push((e[v]?"":"no-")+v));e.input||G(),e.crosswindowmessaging=e.postmessage,e.historymanagement=e.history,e.addTest=function(a,b){a=a.toLowerCase();if(!e[a]){b=!!b(),g.className+=" "+(b?"":"no-")+a,e[a]=b;return e}},A(""),j=l=null,f&&a.attachEvent&&function(){var a=b.createElement("div");a.innerHTML="<elem></elem>";return a.childNodes.length!==1}()&&function(a,b){function p(a,b){var c=-1,d=a.length,e,f=[];while(++c<d)e=a[c],(b=e.media||b)!="screen"&&f.push(p(e.imports,b),e.cssText);return f.join("")}function o(a){var b=-1;while(++b<e)a.createElement(d[b])}var c="abbr|article|aside|audio|canvas|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",d=c.split("|"),e=d.length,f=new RegExp("(^|\\s)("+c+")","gi"),g=new RegExp("<(/*)("+c+")","gi"),h=new RegExp("(^|[^\\n]*?\\s)("+c+")([^\\n]*)({[\\n\\w\\W]*?})","gi"),i=b.createDocumentFragment(),j=b.documentElement,k=j.firstChild,l=b.createElement("body"),m=b.createElement("style"),n;o(b),o(i),k.insertBefore(m,k.firstChild),m.media="print",a.attachEvent("onbeforeprint",function(){var a=-1,c=p(b.styleSheets,"all"),k=[],o;n=n||b.body;while((o=h.exec(c))!=null)k.push((o[1]+o[2]+o[3]).replace(f,"$1.iepp_$2")+o[4]);m.styleSheet.cssText=k.join("\n");while(++a<e){var q=b.getElementsByTagName(d[a]),r=q.length,s=-1;while(++s<r)q[s].className.indexOf("iepp_")<0&&(q[s].className+=" iepp_"+d[a])}i.appendChild(n),j.appendChild(l),l.className=n.className,l.innerHTML=n.innerHTML.replace(g,"<$1font")}),a.attachEvent("onafterprint",function(){l.innerHTML="",j.removeChild(l),j.appendChild(n),m.styleSheet.cssText=""})}(a,b),e._enableHTML5=f,e._version=d,g.className=g.className.replace(/\bno-js\b/,"")+" js "+u.join(" ");return e}(this,this.document);
{
	Math.__name__ = ["Math"];
	Math.NaN = Number["NaN"];
	Math.NEGATIVE_INFINITY = Number["NEGATIVE_INFINITY"];
	Math.POSITIVE_INFINITY = Number["POSITIVE_INFINITY"];
	Math.isFinite = function(i) {
		return isFinite(i);
	};
	Math.isNaN = function(i) {
		return isNaN(i);
	};
}
js.Lib.onerror = null;
Main.main()