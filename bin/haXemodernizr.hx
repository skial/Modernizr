$estr = function() { return js.Boot.__string_rec(this,''); }
if(typeof js=='undefined') js = {}
js.Boot = function() { }
js.Boot.__name__ = ["js","Boot"];
js.Boot.__unhtml = function(s) {
	$s.push("js.Boot::__unhtml");
	var $spos = $s.length;
	{
		var $tmp = s.split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Boot.__trace = function(v,i) {
	$s.push("js.Boot::__trace");
	var $spos = $s.length;
	var msg = (i != null?((i.fileName + ":") + i.lineNumber) + ": ":"");
	msg += js.Boot.__unhtml(js.Boot.__string_rec(v,"")) + "<br/>";
	var d = document.getElementById("haxe:trace");
	if(d == null) alert("No haxe:trace element defined\n" + msg);
	else d.innerHTML += msg;
	$s.pop();
}
js.Boot.__clear_trace = function() {
	$s.push("js.Boot::__clear_trace");
	var $spos = $s.length;
	var d = document.getElementById("haxe:trace");
	if(d != null) d.innerHTML = "";
	else null;
	$s.pop();
}
js.Boot.__closure = function(o,f) {
	$s.push("js.Boot::__closure");
	var $spos = $s.length;
	var m = o[f];
	if(m == null) {
		$s.pop();
		return null;
	}
	var f1 = function() {
		$s.push("js.Boot::__closure@67");
		var $spos = $s.length;
		{
			var $tmp = m.apply(o,arguments);
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	f1.scope = o;
	f1.method = m;
	{
		$s.pop();
		return f1;
	}
	$s.pop();
}
js.Boot.__string_rec = function(o,s) {
	$s.push("js.Boot::__string_rec");
	var $spos = $s.length;
	if(o == null) {
		$s.pop();
		return "null";
	}
	if(s.length >= 5) {
		$s.pop();
		return "<...>";
	}
	var t = typeof(o);
	if(t == "function" && (o.__name__ != null || o.__ename__ != null)) t = "object";
	switch(t) {
	case "object":{
		if(o instanceof Array) {
			if(o.__enum__ != null) {
				if(o.length == 2) {
					var $tmp = o[0];
					$s.pop();
					return $tmp;
				}
				var str = o[0] + "(";
				s += "\t";
				{
					var _g1 = 2, _g = o.length;
					while(_g1 < _g) {
						var i = _g1++;
						if(i != 2) str += "," + js.Boot.__string_rec(o[i],s);
						else str += js.Boot.__string_rec(o[i],s);
					}
				}
				{
					var $tmp = str + ")";
					$s.pop();
					return $tmp;
				}
			}
			var l = o.length;
			var i;
			var str = "[";
			s += "\t";
			{
				var _g = 0;
				while(_g < l) {
					var i1 = _g++;
					str += ((i1 > 0?",":"")) + js.Boot.__string_rec(o[i1],s);
				}
			}
			str += "]";
			{
				$s.pop();
				return str;
			}
		}
		var tostr;
		try {
			tostr = o.toString;
		}
		catch( $e0 ) {
			{
				var e = $e0;
				{
					$e = [];
					while($s.length >= $spos) $e.unshift($s.pop());
					$s.push($e[0]);
					{
						$s.pop();
						return "???";
					}
				}
			}
		}
		if(tostr != null && tostr != Object.toString) {
			var s2 = o.toString();
			if(s2 != "[object Object]") {
				$s.pop();
				return s2;
			}
		}
		var k = null;
		var str = "{\n";
		s += "\t";
		var hasp = (o.hasOwnProperty != null);
		for( var k in o ) { ;
		if(hasp && !o.hasOwnProperty(k)) continue;
		if(k == "prototype" || k == "__class__" || k == "__super__" || k == "__interfaces__") continue;
		if(str.length != 2) str += ", \n";
		str += ((s + k) + " : ") + js.Boot.__string_rec(o[k],s);
		}
		s = s.substring(1);
		str += ("\n" + s) + "}";
		{
			$s.pop();
			return str;
		}
	}break;
	case "function":{
		{
			$s.pop();
			return "<function>";
		}
	}break;
	case "string":{
		{
			$s.pop();
			return o;
		}
	}break;
	default:{
		{
			var $tmp = String(o);
			$s.pop();
			return $tmp;
		}
	}break;
	}
	$s.pop();
}
js.Boot.__interfLoop = function(cc,cl) {
	$s.push("js.Boot::__interfLoop");
	var $spos = $s.length;
	if(cc == null) {
		$s.pop();
		return false;
	}
	if(cc == cl) {
		$s.pop();
		return true;
	}
	var intf = cc.__interfaces__;
	if(intf != null) {
		var _g1 = 0, _g = intf.length;
		while(_g1 < _g) {
			var i = _g1++;
			var i1 = intf[i];
			if(i1 == cl || js.Boot.__interfLoop(i1,cl)) {
				$s.pop();
				return true;
			}
		}
	}
	{
		var $tmp = js.Boot.__interfLoop(cc.__super__,cl);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Boot.__instanceof = function(o,cl) {
	$s.push("js.Boot::__instanceof");
	var $spos = $s.length;
	try {
		if(o instanceof cl) {
			if(cl == Array) {
				var $tmp = (o.__enum__ == null);
				$s.pop();
				return $tmp;
			}
			{
				$s.pop();
				return true;
			}
		}
		if(js.Boot.__interfLoop(o.__class__,cl)) {
			$s.pop();
			return true;
		}
	}
	catch( $e0 ) {
		{
			var e = $e0;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				if(cl == null) {
					$s.pop();
					return false;
				}
			}
		}
	}
	switch(cl) {
	case Int:{
		{
			var $tmp = Math.ceil(o%2147483648.0) === o;
			$s.pop();
			return $tmp;
		}
	}break;
	case Float:{
		{
			var $tmp = typeof(o) == "number";
			$s.pop();
			return $tmp;
		}
	}break;
	case Bool:{
		{
			var $tmp = o === true || o === false;
			$s.pop();
			return $tmp;
		}
	}break;
	case String:{
		{
			var $tmp = typeof(o) == "string";
			$s.pop();
			return $tmp;
		}
	}break;
	case Dynamic:{
		{
			$s.pop();
			return true;
		}
	}break;
	default:{
		if(o == null) {
			$s.pop();
			return false;
		}
		{
			var $tmp = o.__enum__ == cl || (cl == Class && o.__name__ != null) || (cl == Enum && o.__ename__ != null);
			$s.pop();
			return $tmp;
		}
	}break;
	}
	$s.pop();
}
js.Boot.__init = function() {
	$s.push("js.Boot::__init");
	var $spos = $s.length;
	js.Lib.isIE = (typeof document!='undefined' && document.all != null && typeof window!='undefined' && window.opera == null);
	js.Lib.isOpera = (typeof window!='undefined' && window.opera != null);
	Array.prototype.copy = Array.prototype.slice;
	Array.prototype.insert = function(i,x) {
		$s.push("js.Boot::__init@205");
		var $spos = $s.length;
		this.splice(i,0,x);
		$s.pop();
	}
	Array.prototype.remove = (Array.prototype.indexOf?function(obj) {
		$s.push("js.Boot::__init@208");
		var $spos = $s.length;
		var idx = this.indexOf(obj);
		if(idx == -1) {
			$s.pop();
			return false;
		}
		this.splice(idx,1);
		{
			$s.pop();
			return true;
		}
		$s.pop();
	}:function(obj) {
		$s.push("js.Boot::__init@213");
		var $spos = $s.length;
		var i = 0;
		var l = this.length;
		while(i < l) {
			if(this[i] == obj) {
				this.splice(i,1);
				{
					$s.pop();
					return true;
				}
			}
			i++;
		}
		{
			$s.pop();
			return false;
		}
		$s.pop();
	});
	Array.prototype.iterator = function() {
		$s.push("js.Boot::__init@225");
		var $spos = $s.length;
		{
			var $tmp = { cur : 0, arr : this, hasNext : function() {
				$s.push("js.Boot::__init@225@229");
				var $spos = $s.length;
				{
					var $tmp = this.cur < this.arr.length;
					$s.pop();
					return $tmp;
				}
				$s.pop();
			}, next : function() {
				$s.push("js.Boot::__init@225@232");
				var $spos = $s.length;
				{
					var $tmp = this.arr[this.cur++];
					$s.pop();
					return $tmp;
				}
				$s.pop();
			}}
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	var cca = String.prototype.charCodeAt;
	String.prototype.cca = cca;
	String.prototype.charCodeAt = function(i) {
		$s.push("js.Boot::__init@239");
		var $spos = $s.length;
		var x = cca.call(this,i);
		if(isNaN(x)) {
			$s.pop();
			return null;
		}
		{
			$s.pop();
			return x;
		}
		$s.pop();
	}
	var oldsub = String.prototype.substr;
	String.prototype.substr = function(pos,len) {
		$s.push("js.Boot::__init@246");
		var $spos = $s.length;
		if(pos != null && pos != 0 && len != null && len < 0) {
			$s.pop();
			return "";
		}
		if(len == null) len = this.length;
		if(pos < 0) {
			pos = this.length + pos;
			if(pos < 0) pos = 0;
		}
		else if(len < 0) {
			len = (this.length + len) - pos;
		}
		{
			var $tmp = oldsub.apply(this,[pos,len]);
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	$closure = js.Boot.__closure;
	$s.pop();
}
js.Boot.prototype.__class__ = js.Boot;
js.Lib = function() { }
js.Lib.__name__ = ["js","Lib"];
js.Lib.isIE = null;
js.Lib.isOpera = null;
js.Lib.document = null;
js.Lib.window = null;
js.Lib.alert = function(v) {
	$s.push("js.Lib::alert");
	var $spos = $s.length;
	alert(js.Boot.__string_rec(v,""));
	$s.pop();
}
js.Lib.eval = function(code) {
	$s.push("js.Lib::eval");
	var $spos = $s.length;
	{
		var $tmp = eval(code);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Lib.setErrorHandler = function(f) {
	$s.push("js.Lib::setErrorHandler");
	var $spos = $s.length;
	js.Lib.onerror = f;
	$s.pop();
}
js.Lib.prototype.__class__ = js.Lib;
if(typeof haxe=='undefined') haxe = {}
haxe.Log = function() { }
haxe.Log.__name__ = ["haxe","Log"];
haxe.Log.trace = function(v,infos) {
	$s.push("haxe.Log::trace");
	var $spos = $s.length;
	js.Boot.__trace(v,infos);
	$s.pop();
}
haxe.Log.clear = function() {
	$s.push("haxe.Log::clear");
	var $spos = $s.length;
	js.Boot.__clear_trace();
	$s.pop();
}
haxe.Log.prototype.__class__ = haxe.Log;
Main = function() { }
Main.__name__ = ["Main"];
Main.main = function() {
	$s.push("Main::main");
	var $spos = $s.length;
	haxe.Log.trace("@font-face: \t\t\t\t\t" + Modernizr.fontface,{ fileName : "Main.hx", lineNumber : 14, className : "Main", methodName : "main"});
	haxe.Log.trace("canvas: \t\t\t\t\t\t" + Modernizr.canvas,{ fileName : "Main.hx", lineNumber : 15, className : "Main", methodName : "main"});
	haxe.Log.trace("canvas text: \t\t\t\t\t" + Modernizr.canvastext,{ fileName : "Main.hx", lineNumber : 16, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 audio: \t\t\t\t\t" + Modernizr.audio,{ fileName : "Main.hx", lineNumber : 17, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 audio format ogg: \t" + Modernizr.audio.ogg,{ fileName : "Main.hx", lineNumber : 18, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 audio format wav: \t" + Modernizr.audio.wav,{ fileName : "Main.hx", lineNumber : 19, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 audio format mp3: \t" + Modernizr.audio.mp3,{ fileName : "Main.hx", lineNumber : 20, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 audio format m4a: \t" + Modernizr.audio.m4a,{ fileName : "Main.hx", lineNumber : 21, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 video: \t\t\t\t\t" + Modernizr.video,{ fileName : "Main.hx", lineNumber : 22, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 video format ogg: \t" + Modernizr.video.ogg,{ fileName : "Main.hx", lineNumber : 23, className : "Main", methodName : "main"});
	haxe.Log.trace("html5 video format h264: \t" + Modernizr.video.h264,{ fileName : "Main.hx", lineNumber : 24, className : "Main", methodName : "main"});
	haxe.Log.trace("rgba: \t\t\t\t\t\t\t" + Modernizr.rgba,{ fileName : "Main.hx", lineNumber : 25, className : "Main", methodName : "main"});
	haxe.Log.trace("hsla: \t\t\t\t\t\t\t" + Modernizr.hsla,{ fileName : "Main.hx", lineNumber : 26, className : "Main", methodName : "main"});
	haxe.Log.trace("border-image: \t\t\t\t" + Modernizr.borderimage,{ fileName : "Main.hx", lineNumber : 27, className : "Main", methodName : "main"});
	haxe.Log.trace("border-radius: \t\t\t\t" + Modernizr.borderradius,{ fileName : "Main.hx", lineNumber : 28, className : "Main", methodName : "main"});
	haxe.Log.trace("box-shadow: \t\t\t\t\t" + Modernizr.boxshadow,{ fileName : "Main.hx", lineNumber : 29, className : "Main", methodName : "main"});
	haxe.Log.trace("multiple-backgrounds: \t\t" + Modernizr.multiplebgs,{ fileName : "Main.hx", lineNumber : 30, className : "Main", methodName : "main"});
	haxe.Log.trace("backgroundsize: \t\t\t\t" + Modernizr.backgroundsize,{ fileName : "Main.hx", lineNumber : 31, className : "Main", methodName : "main"});
	haxe.Log.trace("opacity: \t\t\t\t\t\t" + Modernizr.opacity,{ fileName : "Main.hx", lineNumber : 32, className : "Main", methodName : "main"});
	haxe.Log.trace("css animations: \t\t\t\t" + Modernizr.cssanimations,{ fileName : "Main.hx", lineNumber : 33, className : "Main", methodName : "main"});
	haxe.Log.trace("css columns: \t\t\t\t\t" + Modernizr.csscolumns,{ fileName : "Main.hx", lineNumber : 34, className : "Main", methodName : "main"});
	haxe.Log.trace("css gradients: \t\t\t\t" + Modernizr.cssgradients,{ fileName : "Main.hx", lineNumber : 35, className : "Main", methodName : "main"});
	haxe.Log.trace("css reflections: \t\t\t" + Modernizr.cssreflections,{ fileName : "Main.hx", lineNumber : 36, className : "Main", methodName : "main"});
	haxe.Log.trace("css 2d transforms: \t\t\t" + Modernizr.csstransforms,{ fileName : "Main.hx", lineNumber : 37, className : "Main", methodName : "main"});
	haxe.Log.trace("css 3d transforms: \t\t\t" + Modernizr.csstransforms3d,{ fileName : "Main.hx", lineNumber : 38, className : "Main", methodName : "main"});
	haxe.Log.trace("css transitions: \t\t\t" + Modernizr.csstransitions,{ fileName : "Main.hx", lineNumber : 39, className : "Main", methodName : "main"});
	haxe.Log.trace("geolocation: \t\t\t\t\t" + Modernizr.geolocation,{ fileName : "Main.hx", lineNumber : 40, className : "Main", methodName : "main"});
	haxe.Log.trace(Modernizr.inputtypes,{ fileName : "Main.hx", lineNumber : 41, className : "Main", methodName : "main"});
	haxe.Log.trace(Modernizr.input,{ fileName : "Main.hx", lineNumber : 42, className : "Main", methodName : "main"});
	haxe.Log.trace("local storage: \t\t\t\t" + Modernizr.localstorage,{ fileName : "Main.hx", lineNumber : 43, className : "Main", methodName : "main"});
	haxe.Log.trace("session storage: \t\t\t" + Modernizr.sessionstorage,{ fileName : "Main.hx", lineNumber : 44, className : "Main", methodName : "main"});
	haxe.Log.trace("web workers: \t\t\t\t\t" + Modernizr.webworkers,{ fileName : "Main.hx", lineNumber : 45, className : "Main", methodName : "main"});
	haxe.Log.trace("application cache: \t\t\t" + Modernizr.applicationcache,{ fileName : "Main.hx", lineNumber : 46, className : "Main", methodName : "main"});
	haxe.Log.trace("svg: \t\t\t\t\t\t\t" + Modernizr.svg,{ fileName : "Main.hx", lineNumber : 47, className : "Main", methodName : "main"});
	haxe.Log.trace("svg clip paths: \t\t\t\t" + Modernizr.svgclippaths,{ fileName : "Main.hx", lineNumber : 48, className : "Main", methodName : "main"});
	haxe.Log.trace("smil: \t\t\t\t\t\t\t" + Modernizr.smil,{ fileName : "Main.hx", lineNumber : 49, className : "Main", methodName : "main"});
	haxe.Log.trace("web sql database: \t\t\t" + Modernizr.websqldatabase,{ fileName : "Main.hx", lineNumber : 50, className : "Main", methodName : "main"});
	haxe.Log.trace("indexed db: \t\t\t\t\t" + Modernizr.indexeddb,{ fileName : "Main.hx", lineNumber : 51, className : "Main", methodName : "main"});
	haxe.Log.trace("web sockets: \t\t\t\t\t" + Modernizr.websockets,{ fileName : "Main.hx", lineNumber : 52, className : "Main", methodName : "main"});
	haxe.Log.trace("hashchange event: \t\t\t" + Modernizr.hashchange,{ fileName : "Main.hx", lineNumber : 53, className : "Main", methodName : "main"});
	haxe.Log.trace("history management: \t\t" + Modernizr.historymanagement,{ fileName : "Main.hx", lineNumber : 54, className : "Main", methodName : "main"});
	haxe.Log.trace("drag and drop: \t\t\t\t" + Modernizr.draganddrop,{ fileName : "Main.hx", lineNumber : 55, className : "Main", methodName : "main"});
	haxe.Log.trace("cross window messaging: \t" + Modernizr.crosswindowmessaging,{ fileName : "Main.hx", lineNumber : 56, className : "Main", methodName : "main"});
	$s.pop();
}
Main.prototype.__class__ = Main;
Std = function() { }
Std.__name__ = ["Std"];
Std["is"] = function(v,t) {
	$s.push("Std::is");
	var $spos = $s.length;
	{
		var $tmp = js.Boot.__instanceof(v,t);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std.string = function(s) {
	$s.push("Std::string");
	var $spos = $s.length;
	{
		var $tmp = js.Boot.__string_rec(s,"");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std["int"] = function(x) {
	$s.push("Std::int");
	var $spos = $s.length;
	if(x < 0) {
		var $tmp = Math.ceil(x);
		$s.pop();
		return $tmp;
	}
	{
		var $tmp = Math.floor(x);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std.parseInt = function(x) {
	$s.push("Std::parseInt");
	var $spos = $s.length;
	var v = parseInt(x);
	if(Math.isNaN(v)) {
		$s.pop();
		return null;
	}
	{
		var $tmp = v;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std.parseFloat = function(x) {
	$s.push("Std::parseFloat");
	var $spos = $s.length;
	{
		var $tmp = parseFloat(x);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std.random = function(x) {
	$s.push("Std::random");
	var $spos = $s.length;
	{
		var $tmp = Math.floor(Math.random() * x);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std.prototype.__class__ = Std;
IntIter = function(min,max) { if( min === $_ ) return; {
	$s.push("IntIter::new");
	var $spos = $s.length;
	this.min = min;
	this.max = max;
	$s.pop();
}}
IntIter.__name__ = ["IntIter"];
IntIter.prototype.hasNext = function() {
	$s.push("IntIter::hasNext");
	var $spos = $s.length;
	{
		var $tmp = this.min < this.max;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
IntIter.prototype.max = null;
IntIter.prototype.min = null;
IntIter.prototype.next = function() {
	$s.push("IntIter::next");
	var $spos = $s.length;
	{
		var $tmp = this.min++;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
IntIter.prototype.__class__ = IntIter;
$Main = function() { }
$Main.__name__ = ["@Main"];
$Main.prototype.__class__ = $Main;
$_ = {}
js.Boot.__res = {}
$s = [];
$e = [];
js.Boot.__init();
{
	js.Lib.document = document;
	js.Lib.window = window;
	onerror = function(msg,url,line) {
		var stack = $s.copy();
		var f = js.Lib.onerror;
		$s.splice(0,$s.length);
		if( f == null ) {
			var i = stack.length;
			var s = "";
			while( --i >= 0 )
				s += "Called from "+stack[i]+"\n";
			alert(msg+"\n\n"+s);
			return false;
		}
		return f(msg,stack);
	}
}
{
	String.prototype.__class__ = String;
	String.__name__ = ["String"];
	Array.prototype.__class__ = Array;
	Array.__name__ = ["Array"];
	Int = { __name__ : ["Int"]}
	Dynamic = { __name__ : ["Dynamic"]}
	Float = Number;
	Float.__name__ = ["Float"];
	Bool = { __ename__ : ["Bool"]}
	Class = { __name__ : ["Class"]}
	Enum = { }
	Void = { __ename__ : ["Void"]}
}
{
	window.Modernizr = Modernizr;
}
{
	window.Modernizr = Modernizr;
}
{
	Math.__name__ = ["Math"];
	Math.NaN = Number["NaN"];
	Math.NEGATIVE_INFINITY = Number["NEGATIVE_INFINITY"];
	Math.POSITIVE_INFINITY = Number["POSITIVE_INFINITY"];
	Math.isFinite = function(i) {
		$s.push("@Main::new@69");
		var $spos = $s.length;
		{
			var $tmp = isFinite(i);
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	Math.isNaN = function(i) {
		$s.push("@Main::new@81");
		var $spos = $s.length;
		{
			var $tmp = isNaN(i);
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
}
js.Lib.onerror = null;
$Main.init = Main.main();
