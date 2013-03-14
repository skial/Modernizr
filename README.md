# Modernizr for Haxe #

Modernizr is a JavaScript library that detects HTML5 and CSS3 features in the user’s browser.

## Overview ##

Modernizr for Haxe are type definitions to be used by the [HaxeJS](http://www.haxejs.org/) target.

## Install ##

#### v2.6.2 ####

Requires [Haxe 3 RC](http://haxe.org/manual/haxe3).

To install `v2.6.2` run:

```haxelib git modernizr https://github.com/skial/Modernizr.git src```

Version `2.6.2` will automatically create a custom build, based on the fields you use. 
To use non core feature detects, add `-D mnc` or `-D modernizr_non_core` to your `hxml` file. The custom build will
include any non core features you use.


#### v2.6.1 ####

Version `2.6.1` _should_ run fine for Haxe v2.10+.

To install `v2.6.1` run:
	
```haxelib install modernizr```

## Info ##
	
Always read the documentation for non core test you are using, as some are asynchronous.

## Links ##

http://www.modernizr.com/  
http://www.modernizr.com/download/  
http://github.com/Modernizr/Modernizr  
http://modernizr.github.com/Modernizr/test/  
