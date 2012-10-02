package modernizr;

import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.macro.Expr;
import sys.FileSystem;
import sys.io.File;
import modernizr.Defaultizr;

using StringTools;
using tink.macro.tools.MacroTools;

typedef MacroType = haxe.macro.Type;

/**
 * ...
 * @author Skial Bainn
 */

class Customizr {
	
	private static var _version:String = '2.6.2';
	
	private static var _downloads:String = 'http://modernizr.com/downloads/';
	private static var _feature_detects:String = 'i/js/modernizr-git/feature-detects/';
	private static var _name:String = 'modernizr-';
	private static var _ext:String = '.js';
	private static var _path:String = Context.resolvePath('modernizr/assets/' + _name + _version + _ext);
	
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
      'indexedDB'       : ['domprefixes'],
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

	@:macro
	public static function build():Array<Field> {
		/*if (Context.defined('dce'))*/ Context.onGenerate(izr_alpha);
		return Context.getBuildFields();
	}
	
	private static function izr_alpha(types:Array<MacroType>):Void {
		var tests:Hash<Array<String>> = new Hash<Array<String>>();
		var non_core:Hash<Bool> = new Hash<Bool>();
		
		for (t in types) {
			switch(t) {
				case TInst(type, params):
					
					var cls = type.get();
					
					if (cls.isExtern && cls.name == 'Modernizr') {
						for (f in cls.statics.get()) {
							
							if (f.meta.has(':feature_detect')) non_core.set(f.name.toLowerCase(), true);
							if (f.meta.has(':?used')) tests.set(f.name.toLowerCase(), []);
							
						}
					} 
					
					if (cls.name == 'Defaultizr') {
						for (f in cls.statics.get()) {
							if (Context.getTypedExpr(f.expr()).toString() == 'true') {
								
								tests.set(f.name.toLowerCase(), []);
								
							}
						}
					}
					
				default:
					
			}
		}
		
		izr_omega(File.getContent(_path), tests, non_core);
	}
	
	private static function izr_omega(source:String, tests:Hash<Array<String>>, non_core:Hash<Bool>):Void {
		
		for (d in Reflect.fields(_dependencies)) {
			if (tests.exists(d)) {
				
				for (z in cast(Reflect.field(_dependencies, d), Array<Dynamic>)) {
					if (!tests.exists(z)) tests.set(z, []);
				}
				
			}
		}
		
		var new_source:String = source;
		var result:String = '';
		
		var marker:EReg = ~/^\s*\/\*>>(\w*)\*\/$(?:[\w\W]*?)^\s*\/\*>>(\1)\*\/$/m;
		
		// If short hand ereg ~/.../m, it causes autocompletion issues.
		var test:EReg = new EReg('^\\s*(?:tests\\[\')(\\w*)(?:\']\\s=\\s[\\w\\W]*?};)$', 'm');
		
		new_source = _strip_test(test, new_source, tests);
		new_source = _strip_test(marker, new_source, tests);
		
		var css_prefix:EReg = ~/["']\sjs\s["']\s*\+\s*([\w]+).join\(["'] ["']\)/;
		var css_name:EReg = ~/className\s*\+=\s*["']\s['"]/;
		
		if (Defaultizr.cssClasses && Defaultizr.cssPrefix != '') {
			var new_prefix = Defaultizr.cssPrefix;
			if (css_prefix.match(new_source))
				new_source = css_prefix.replace(new_source, '" '+new_prefix+'js '+new_prefix+'"+'+css_prefix.matched(1)+'.join(" '+new_prefix+'")');
			
			if (css_name.match(new_source))
				new_source = css_name.replace(new_source, 'className+=" ' + new_prefix + '"');
		}
		
		result += new_source;
		
		File.saveContent('./modernizr-' + Date.now().toString().replace(':', '-') + '.hx.js', result);
	}
	
	private static function _strip_test(ereg:EReg, text:String, tests:Hash<Array<String>>):String {
		var _result = '';
		var matched = '';
		
		while (true) {
			if (ereg.match(text) && matched != ereg.matched(0)) {
				matched = ereg.matched(0);
				
				if (tests.exists(ereg.matched(1).trim())) {
					_result += ereg.matchedLeft() + matched;
				} else {
					_result += ereg.matchedLeft();
				}
				text = ereg.matchedRight();
			} else {
				break;
			}
		}
		
		_result += text;
		
		return _result;
	}
	
}