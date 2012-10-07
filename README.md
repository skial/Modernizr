# Modernizr for Haxe #

Modernizr is a JavaScript library that detects HTML5 and CSS3 features in the user’s browser.

## Overview ##

Modernizr for Haxe are extern type definitions to be used by the [HaxeJS](http://www.haxejs.org/) target.

## Install ##

#### v2.6.2 ####

To install ```v2.6.2``` run:

```haxelib git modernizr https://github.com/skial/Modernizr.git src```

Then run 

```haxelib install tink_macros```

which is a required dependency.


#### v2.6.1 ####

To install ```v2.6.1``` run:
	
```haxelib install modernizr```

## Custom Build ##

In ```v.2.6.2``` a custom build will be created based on the fields you use. Add the following to your ```.hxml```.

```
--dead-code-elimination
-D dce
```

## Non Core Feature Detects ##

You can use feature detects not found in Modernizr's core tests by adding ```-D mnc``` or ```-D modernizr_non_core``` to your ```.hxml``` file.

If you are using ```v2.6.2``` and have dead code elimination turned on, then a custom version will be built, only including fields which you have used.

If you are using ```v2.6.1``` you will need to create a custom version by visiting http://modernizr.com/download/
	
Always read the documentation for non core test you are using, as some are asynchronous.

## Links ##

http://www.modernizr.com/  
http://github.com/Modernizr/Modernizr  
http://www.modernizr.com/download/  
http://modernizr.github.com/Modernizr/test/  