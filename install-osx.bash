#!/usr/bin/env bash

if [ ! -d ~/Library ]; then
  echo "This script only works on OS X"
  exit 1
fi

for i in ~/Library/Preferences/{IntelliJ,RubyMine,WebIde,WebStorm,AndroidStudio}*/Colors; do
  echo "Installing in Colors directory: ${i}"
  cp Gruvbox.icls "${i}"
done
