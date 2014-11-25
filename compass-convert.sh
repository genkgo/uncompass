#!/bin/bash
# converts included compass vendor-prefix mixins to their normal css declarations
# created by Tonijn - Genkgo <a href="http://www.genkgo.com" />

usage() { echo "usage: [project folder root]"; exit 1; }

FOLDER="app/assets/scss/"
DEST=$1$FOLDER

sed -i '' 's|@include background-size(\(.*\))|background-size: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include border-radius(\(.*\))|border-radius: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include box-shadow(\(.*\))|box-shadow: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include box-sizing(\(.*\))|box-sizing: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include rotate(\(.*\))|rotate: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include text-shadow(\(.*\))|text-shadow: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include transition(\(.*\))|transition: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include transition-property(\(.*\))|transition-property: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include transition-duration(\(.*\))|transition-duration: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include transition-timing-function(\(.*\))|transition-duration: \1|g' $(find ${DEST} -name '*.scss')

sed -i '' 's|@include pie-clearfix|@include clearfix|g' $(find ${DEST} -name '*.scss')

echo "conversion complete \n";
exit 1;