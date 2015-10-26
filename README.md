UnCompass
=========

##Compass mixin removal bash script.
Finds all [Compass](https://github.com/Compass/compass) mixins in your SASS/SCSS files to replace them with their common css equivalents. Makes leaving/switching this Stylesheet Authoring Environment easy.


###Following actions will be performed
1. Compass config.rb file will be removed
2. Mixins will be removed or exchanged with corresponding properties

####Here is the list of replaced mixins (to be continued)
@include appearance
@include background-size
@include border-bottom-left-radius
@include border-top-left-radius
@include border-bottom-right-radius
@include border-top-right-radius
@include border-radius
@include box-shadow
@include box-sizing
@include columns
@include column-gap
@include column-count
@include column-width
@include filter
@include hide-text
@include hyphens
@include hyphenation
@include inline-block
@include opacity
@include rotate
@include text-shadow
@include transition
@include transition-property
@include transition-duration
@include transition-timing-function
@include word-break
@include pie-clearfix


###Usage
To run the script enter following command in your terminal/console
```
./compass-convert.sh
```
It might be that you need admin rights to run a bash script. In that case try the sudo command
```
sudo ./compass-convert.sh
```


###Example:
```
@mixin box-shadow(#333 1px 1px);
```
becomes
```
box-shadow: #333 1px 1px;
```
