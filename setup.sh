#!/bin/bash
DOTFILESDIR=$(dirname $0)
FILES=$(find $DOTFILESDIR -name ".*" -type f)
for f in $FILES
do
  FULLPATH=$(readlink -f $f)
  BASENAME=$(basename $f)
  LINK="$HOME/$BASENAME"
  echo "$LINK -> $FULLPATH"
  rm $LINK
  ln -s $FULLPATH $LINK
done
