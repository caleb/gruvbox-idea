#!/usr/bin/env bash

if [ ! -d ~/Library ]; then
  echo "This script only works on OS X"
  exit 1
fi

for i in ~/Library/Preferences/{DataGrip,IntelliJ,RubyMine,PhpStorm,WebStorm,AndroidStudio}*; do
  mkdir -p "${i}/Colors"
  echo "Installing in Colors directory: ${i}/Colors"
  cp Gruvbox.icls "${i}/Colors"
done
