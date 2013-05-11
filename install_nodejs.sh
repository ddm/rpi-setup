#!/bin/bash
if (( $# != 1 ))
then
  echo "Usage: ./install_nodejs.sh [version]"
  echo "e.g. ./install_nodejs.sh v0.10.5"
  exit 1
fi
FILESTEM=node-$1-linux-arm-pi
FILENAME=$FILESTEM.tar.gz
URL="http://nodejs.org/dist/$1/$FILENAME"
TARGET=$HOME/nodejs
mkdir $TARGET
DOWNLOAD=$TARGET/$FILENAME
wget -O $DOWNLOAD $URL
tar xvzf $DOWNLOAD --directory=$TARGET
ln -s $TARGET/$FILESTEM $TARGET/current
