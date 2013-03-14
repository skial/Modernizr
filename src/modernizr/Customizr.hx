package modernizr;

import haxe.ds.StringMap;

#if macro
import haxe.Http;
import haxe.macro.Context;
import haxe.macro.Compiler;

import sys.io.File;
import sys.FileSystem;
import haxe.macro.Type;
import haxe.macro.Expr;
import modernizr.Defaultizr;

using Std;
using Lambda;
using StringTools;
using haxe.EnumTools;
using haxe.macro.ExprTools;
#end

/**
 * ...
 * @author Skial Bainn
 */

class Customizr {
	
	
	private static var tests:StringMap<Array<String>> = new StringMap<Array<String>>();
	private static var non_core:StringMap<Bool> = new StringMap<Bool>();
	
	public static macro function logField(name:Expr, ?core:Expr = null) {
		var _name = name.toString().replace(' ', '').replace('(', '').replace(')', '');
		
		if (core != null) {
			var _core = core.toString().replace(' ', '').replace('(', '').replace(')', '');
			if (_core != 'null' && !non_core.exists(_core)) non_core.set(_core, true);
		}
		
		if (!tests.exists(_name)) tests.set(_name, []);
		
		//return Context.parse('untyped __js__("Modernizr[\'' + _name + '\']")', Context.currentPos());
		return macro untyped __js__('Modernizr["$_name"]');
	}
	
	#if macro
	private static var _version:String = '2.6.2';
	private static var _base:String = 'http://modernizr.com/';	
	private static var _name:String = 'modernizr-';
	private static var _ext:String = '.js';
	private static var _path:String = Context.resolvePath('modernizr/assets/' + _name + _version + _ext);
	private static var _feature_detects:String = _path.replace(_name + _version + _ext, '') + 'feature-detects/';
	
	/**
	 * Stolen from the modernizr build script modulizr.js 
	 * https://github.com/Modernizr/modernizr.com/blob/gh-pages/i/js/modulizr.js#L15
	 */
	private static var _dependencies:Dynamic<Array<String>> = {
      'canvastext'      : ['canvas'],
      'csstransforms3d' : ['prefixes', 'domprefixes', 'testprop', 'testbundle', 'teststyles', 'testallprops'],
      'flexbox'         : ['domprefixes', 'testprop', 'testallprops'],
      'cssgradients'    : ['prefixes'],
      'opacity'         : ['prefixes'],
      'indexeddb'       : ['domprefixes'],
      'backgroundsize'  : ['domprefixes', 'testprop', 'testallprops'],
      'borderimage'     : ['domprefixes', 'testprop', 'testallprops'],
      'borderradius'    : ['domprefixes', 'testprop', 'testallprops'],
      'boxshadow'       : ['domprefixes', 'testprop', 'testallprops'],
      'cssanimations'   : ['domprefixes', 'testprop', 'testallprops'],
      'csscolumns'      : ['domprefixes', 'testprop', 'testallprops'],
      'cssreflections'  : ['domprefixes', 'testprop', 'testallprops'],
      'csstransitions'  : ['domprefixes', 'testprop', 'testallprops'],
      'testallprops'    : ['domprefixes', 'testprop'],
      'flexbox-legacy'  : ['domprefixes', 'testprop', 'testallprops'],
      'prefixed'        : ['domprefixes', 'testprop', 'testallprops'],
      'csstransforms'   : ['domprefixes', 'testprop', 'testallprops'],
      'mq'              : ['teststyles'],
      'hashchange'      : ['hasevent'],
      'draganddrop'     : ['hasevent'],
      'generatedcontent': ['smile', 'testbundle', 'teststyles'],
      'svg'             : ['ns'],
      'inlinesvg'       : ['ns'],
      'smil'            : ['ns'],
      'svgclippaths'    : ['ns'],
      'input'           : ['webforms', 'inputelem'],
      'inputtypes'      : ['webforms', 'inputelem', 'smile'],
      'touch'           : ['prefixes', 'testbundle', 'teststyles'],
      'fontface'        : ['testbundle', 'teststyles'],
      'testbundle'      : ['teststyles'],
      'respond'         : ['mq', 'teststyles'],
      'websockets'      : ['domprefixes'],

      // community - Feb 6 2012
      'a_download' : [],
      'audio_audiodata_api' : [],
      'audio_webaudio_api' : [],
      'battery_api' : ['domprefixes', 'testprop', 'testallprops', 'prefixed'],
      'battery_level' : ['domprefixes', 'testprop', 'testallprops', 'prefixed'],
      'canvas_todataurl_type' : ['canvas'],
      'contenteditable' : [],
      'contextmenu' : [],
      'cookies' : [],
      'cors' : [],
      'css_backgroundcliptext' : ['prefixes'],
      'css_backgroundrepeat' : ['teststyles'],
      'css_backgroundsizecover' : ['teststyles'],
      'css_boxsizing' : ['testallprops'],
      'css_cubicbezierrange' : ['prefixes'],
      'css_displayrunin' : ['teststyles'],
      'css_displaytable' : [],
      'css_hyphens' : ['prefixes', 'testallprops'],
      'css_mask' : ['testallprops'],
      'css_mediaqueries' : ['teststyles', 'mq'],
      'css_overflow_scrolling' : ['testallprops'],
      'css_pointerevents' : [],
      'css_remunit' : [],
      'css_resize' : ['testallprops'],
      'css_scrollbars' : ['prefixes', 'teststyles'],
      'css_userselect' : ['testallprops'],
      'custom_protocol_handler' : [],
      'dataview_api' : [],
      'dom_classlist' : [],
      'dom_createElement_attrs' : [],
      'dom_dataset' : [],
      'dom_microdata' : [],
      'elem_datalist' : [],
      'elem_details' : [],
      'elem_output' : [],
      'elem_progress_meter' : [],
      'elem_ruby' : [],
      'elem_time' : [],
      'elem_track' : [],
      'emoji' : ['canvas', 'canvastext'],
      'es5_strictmode' : [],
      'event_deviceorientation_motion' : [],
      'file_api' : [],
      'file_filesystem' : ['domprefixes'],
      'forms_placeholder' : ['webforms', 'input', 'inputelem', 'smile', 'inputtypes'],
      'forms_speechinput' : [],
      'forms_validation' : [],
      'fullscreen_api' : ['domprefixes'],
      'gamepad' : [],
      'getusermedia' : [],
      'ie8compat' : [],
      'img_apng' : ['canvas'],
      'img_webp' : [],
      'json' : [],
      'lists_reversed' : [],
      'mathml' : [],
      'network_connection' : [],
      'network_eventsource' : [],
      'notification' : ['domprefixes', 'testprop', 'testallprops', 'prefixed'],
      'performance' : ['domprefixes', 'testprop', 'testallprops', 'prefixed'],
      'quota_management_api' : ['domprefixes', 'testprop', 'testallprops', 'prefixed'],
      'requestanimationframe' : ['domprefixes', 'testprop', 'testallprops', 'prefixed'],
      'script_async' : [],
      'script_defer' : [],
      'unicode' : ['teststyles'],
      'url_data_uri' : [],
      'userdata' : [],
      'web_intents' : [],
      'webgl_extensions' : ['webgl'],
      'websockets_binary' : [],
      'window_framed' : [],
      'workers_blobworkers' : [],
      'workers_dataworkers' : [],
      'workers_sharedworkers' : [],

      /* added  july 16 2012 */
      'blob-constructor' : [],
      'css-backgroundcliptext' : [],
      'css-backgroundposition-fourvalues' : [],
      'css-backgroundposition-xy' : ['teststyles'],
      'css-calc' : ['prefixes'],
      'css-lastchild' : ['teststyles'],
      'css-regions' : ['prefixed'],
      'css-subpixelfont' : ['teststyles'],
      'network-xhr2' : [],
      'style-scoped' : [],
      'svg-filters' : [],
      'forms-fileinput' : [],
      'vibrate' : [],
      'vibration' : [],

      /* added sept 3rd */
      'contentsecuritypolicy' : [],
      'css-objectfit' : ['prefixed'],
      'css-positionsticky' : ['prefixes'],
      'css-supports' : [],
      'css-vhunit' : ['teststyles'],
      'css-vmaxunit' : ['teststyles'],
      'css-vminunit' : ['teststyles'],
      'css-vwunit' : ['teststyles'],
      'forms-formattribute' : [],
      'iframe-sandbox' : [],
      'iframe-seamless' : [],
      'iframe-srcdoc' : [],
      'pointerlock-api' : ['prefixed']
	}
	
	public static macro function build():Array<Field> {
		if (Context.defined('dce')) {
			var old_fields:Array<Field> = Context.getBuildFields();
			var new_fields:Array<Field> = [];
			
			for (f in old_fields) {
				var _name = f.name.toLowerCase();
				var _core = null;
				var _complex = null;
				var _expr = null;
				
				switch (f.kind) {
					case FVar(t, e):
						_complex = t;
						_expr = e;
					case _:
						
				}
				
				var _enum = f.kind.getName();
				var _access = [APublic, AStatic];
				
				if (_enum == 'FProp' || _enum == 'FFun') {
					new_fields.push(f);
					continue;
				}
				
				for (meta in f.meta) {
					if (meta.name == ':feature_detect') {
						if (meta.params.length != 0) {
							_core = meta.params[0].toString().toLowerCase().replace('"', '');
							if (_core == 'null') _core = null;
						}
						
						if (_core == null) _core = _name;
						
						break;
					}
				}
				
				var _func = Context.parse('Customizr.logField(${_name}, ${_core})', f.pos);
				
				var _field:Field = {
					name:f.name,
					access:_access,
					kind:FVar(_complex, _func),
					pos:f.pos,
					meta:f.meta,
					doc:f.doc
				}
				
				new_fields.push(_field);
			}
			
			Context.onGenerate(izr_alpha);
			
			// This stops the class being generated. This needs to be done because Haxe
			// sees it as a real class as it lacks 'extern'. Adding 'extern' kills the
			// point of this.
			Compiler.exclude('Modernizr');
			Compiler.exclude('modernizr.Defaultizr');
			Compiler.exclude('modernizr.Customizr');
			Compiler.exclude('modernizr.Audio');
			Compiler.exclude('modernizr.Video');
			Compiler.exclude('modernizr.InputTypes');
			Compiler.exclude('modernizr.InputAttributes');
			
			return new_fields;
		}
		return Context.getBuildFields();
	}
	
	private static function izr_alpha(types:Array<Type>):Void {
		if (Defaultizr.printShiv) Defaultizr.shiv = false;
		if (!Defaultizr.shiv && !Defaultizr.printShiv) Defaultizr.shiv = true;
		
		for (t in types) {
			switch(t) {
				case TInst(type, _):
					
					var cls = type.get();
					
					if (cls.name == 'Defaultizr') {
						for (f in cls.statics.get()) {
							
							if (!f.meta.has(':ignore') && Context.getTypedExpr(f.expr()).toString() == 'true') {
								
								tests.set(f.name.toLowerCase(), []);
								
							}
						}
					}
					
				default:
					
			}
		}
		
		izr_omega(File.getContent(_path), tests, non_core);
	}
	
	private static function _check_dependencies(tests:StringMap<Array<String>>, features:StringMap<Bool>):StringMap<Array<String>> {
		var key:String = '';
		
		for (d in Reflect.fields(_dependencies)) {
			key = StringTools.replace(d, '_', '-').toLowerCase();
			
			if (features.exists(key)) {
				
				for (z in cast(Reflect.field(_dependencies, d), Array<Dynamic>)) {
					key = StringTools.replace(z, '_', '-').toLowerCase();
					if (!tests.exists(key)) tests.set(key, []);
				}
				
			}
		}
		
		for (d in Reflect.fields(_dependencies)) {
			key = StringTools.replace(d, '_', '-').toLowerCase();
			
			if (tests.exists(key)) {
				
				for (z in cast(Reflect.field(_dependencies, d), Array<Dynamic>)) {
					key = StringTools.replace(z, '_', '-').toLowerCase();
					if (!tests.exists(key)) tests.set(key, []);
				}
				
			}
		}
		
		return tests;
	}
	
	private static function izr_omega(source:String, tests:StringMap<Array<String>>, non_core:StringMap<Bool>):Void {
		
		tests = _check_dependencies(tests, non_core);
		
		var new_source:String = source;
		var result:String = '/* Modernizr ' + _version + ' (Haxe Custom Build) http://haxe.org/ | MIT & BSD\n * Build: http://modernizr.com/download/#';
		
		var marker:EReg = ~/^\s*\/\*>>(\w*)\*\/$(?:[\w\W]*?)^\s*\/\*>>(\1)\*\/$/m;
		
		// If short hand ereg ~/.../m, it causes autocompletion issues.
		var test:EReg = new EReg('^\\s*(?:tests\\[\')(\\w*)(?:\']\\s=\\s[\\w\\W]*?};)$', 'm');
		
		new_source = _strip_test(test, new_source, tests);
		new_source = _strip_test(marker, new_source, tests);
		
		new_source = _check_prefix(new_source);
		
		new_source += _last_checks();
		
		for (ncore in non_core.keys()) {
			new_source += _load_feature_detect(ncore);
		}
		
		for (key in tests.keys()) {
			result += '-' + key.replace('-', '_');
		}
		
		for (key in non_core.keys()) {
			result += '-' + key.replace('-', '_');
		}
		
		result += (Defaultizr.prefixed ? '-cssclassprefix:' + Defaultizr.cssPrefix.replace('_', '!') : '');
		result += new_source;
		
		var output:String = Compiler.getOutput();
		output = output.substr(0, output.lastIndexOf('/'));
		
		File.saveContent(output + '/modernizr-' + _version + '.hx' + _ext, result);
	}
	
	private static function _strip_test(ereg:EReg, text:String, tests:StringMap<Array<String>>):String {
		var result = '';
		var matched = '';
		
		while (true) {
			if (ereg.match(text) && matched != ereg.matched(0)) {
				matched = ereg.matched(0);
				
				if (tests.exists(ereg.matched(1).trim().toLowerCase())) {
					result += ereg.matchedLeft() + matched;
				} else {
					result += ereg.matchedLeft();
				}
				text = ereg.matchedRight();
			} else {
				break;
			}
		}
		
		result += text;
		
		return result;
	}
	
	private static function _check_prefix(text:String):String {
		var css_prefix:EReg = ~/["']\sjs\s["']\s*\+\s*([\w]+).join\(["'] ["']\)/;
		var css_name:EReg = ~/className\s*\+=\s*["']\s['"]/;
		
		if (Defaultizr.cssClasses && Defaultizr.cssPrefix != '') {
			var new_prefix = Defaultizr.cssPrefix;
			
			if (css_prefix.match(text)) {
				text = css_prefix.replace(text, '" ' + new_prefix + 'js ' + new_prefix + '"+' + css_prefix.matched(1) + '.join(" ' + new_prefix + '")');
			}
			
			if (css_name.match(text)) {
				text = css_name.replace(text, 'className+=" ' + new_prefix + '"');
			}
		}
		
		return text;
	}
	
	private static function _load_feature_detect(name:String):String {
		name = name.replace('_', '-');
		
		var result = '';
		var path = _feature_detects + name + _ext;
		
		if (FileSystem.exists(path)) {
			result = File.getContent(path);
		} else {
			trace(path);
		}
		
		return result;
	}
	
	private static function _last_checks():String {
		var result = '';
		
		if (Defaultizr.printShiv && !Defaultizr.shiv) result += File.getContent(Context.resolvePath('modernizr/assets/html5shiv-printshiv-3.6.js'));
		if (Defaultizr.load) result += File.getContent(Context.resolvePath('modernizr/assets/modernizr.load.1.5.4.js'));
		
		return result;
	}
	#end
	
}