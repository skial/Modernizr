# Modernizr for Haxe #

Modernizr is a JavaScript library that detects HTML5 and CSS3 features in the user’s browser.

## Overview ##

Modernizr for Haxe are extern type definitions to be used by the [HaxeJS](http://www.haxejs.org/) target.

## Install ##

#### v2.6.2 ####

To install ```v2.6.2``` do one of the following :

- Run ```haxelib git modernizr https://github.com/skial/Modernizr.git src```. This should setup Modernizr to use this git repository. Then run ```haxelib install tink_macros```, which is a required dependency.
- Clone this repository and run ```haxelib dev modernizr path/to/local/folder```


In ```v2.6.2```, a custom version of Modernizr can be created based on the fields you use.

In Haxe v2.10 and earlier, you will need to set ```--dead-code-elimination``` and add ```-D dce``` in your ```.hxml``` file for it to work.

In nightly builds of Haxe, all you need to do is set ```--dead-code-elimination``` in your ```.hxml``` file.

#### v2.6.1 ####

To install ```v2.6.1``` run ```haxelib install modernizr``` from the command line. You will need to create a custom version by using the build tool at http://modernizr.com/download/ for best performance.


## Non Core Feature Detects ##

You can use feature detects not found in Modernizr's core tests by adding ```-D mnc``` or ```-D modernizr_non_core``` to your ```.hxml``` file.

If you are using ```v2.6.2```, and have dead code elimination turned on, then a custom version will be built, only including fields which you use.

If you are using ```v2.6.1``` you will need to create a custom version by visiting http://modernizr.com/download/
	
Always read the documentation for non core test you are using, as some are asynchronous.

## Links ##

http://www.modernizr.com/  
http://github.com/Modernizr/Modernizr  
http://www.modernizr.com/download/  
http://modernizr.github.com/Modernizr/test/  