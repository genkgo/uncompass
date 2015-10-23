#!/bin/bash
# converts included compass vendor-prefix mixins to their normal css declarations
# created by Tonijn - Genkgo <a href="http://www.genkgo.com" />

usage() { echo "usage: [project folder root]"; exit 1; }

FOLDER="private"
DEST=$1$FOLDER

find . -name "config.rb" -exec rm -rf {} \;
sed -i '' '/@import \"compass/d' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include appearance(\(.*\))|appearance: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include hide-text(\(.*\))|text-indent: -9999px; overflow: hidden; white-space: nowrap|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include background-size(\(.*\))|background-size: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include border-bottom-left-radius(\(.*\))|border-bottom-left-radius: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include border-bottom-right-radius(\(.*\))|border-bottom-right-radius: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include border-radius(\(.*\))|border-radius: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include box-shadow(\(.*\))|box-shadow: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include box-sizing(\(.*\))|box-sizing: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include column-gap(\(.*\))|column-gap: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include column-count(\(.*\))|column-count: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include rotate(\(.*\))|rotate: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include text-shadow(\(.*\))|text-shadow: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include transition(\(.*\))|transition: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include transition-property(\(.*\))|transition-property: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include transition-duration(\(.*\))|transition-duration: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include transition-timing-function(\(.*\))|transition-duration: \1|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include inline-block(\(.*\))|display: inline-block|g' $(find ${DEST} -name '*.scss')
sed -i '' 's|@include opacity(\(.*\))|opacity: \1|g' $(find ${DEST} -name '*.scss')

sed -i '' 's|@include pie-clearfix|@include clearfix|g' $(find ${DEST} -name '*.scss')

echo "conversion complete";
exit 1;
