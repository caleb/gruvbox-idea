#!/usr/bin/env bash

if [ ! -d ~/Library ]; then
  echo "This script only works on OS X"
  exit 1
fi

for i in ~/Library/Preferences/{CLion,DataGrip,IntelliJ,IdeaIC,RubyMine,PhpStorm,WebStorm,AndroidStudio,PyCharm}*; do
  if [ -d "${i}" ]; then
    mkdir -p "${i}/Colors"
    echo "Installing in Colors directory: ${i}/Colors"
    cp Gruvbox.icls "${i}/Colors"
  fi
done
