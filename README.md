UnCompass
=========

##Compass mixin removal bash script.
Finds all [Compass](https://github.com/Compass/compass) mixins in your SASS/SCSS files to replace them with their common css equivalents. Makes leaving/switching this Stylesheet Authoring Environment easy.

###Example: 
```
@mixin box-shadow(#333 1px 1px);
```
becomes
```
box-shadow: #333 1px 1px;
```