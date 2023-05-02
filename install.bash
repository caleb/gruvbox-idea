#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
  config_dirs_template="$HOME/Library/Application Support/JetBrains/XXX*"
else
  config_dirs_template="$HOME/.XXX*/config"
fi

shopt -s nullglob # to prevent the config_dir glob misbehaving below

PREV_IFS=$IFS # save original IFS
IFS=$(echo -en "\n\b") # set IFS to properly handle directories with space in name

for product in CLion DataGrip IntelliJ IdeaIC RubyMine PhpStorm WebStorm AndroidStudio PyCharm GoLand Rider AppCode; do
  config_dirs="${config_dirs_template//XXX/$product}"
  for config_dir in $config_dirs; do
    colors_dir="$config_dir/colors"
    echo "Installing in $colors_dir"
    mkdir -p "$colors_dir"
    cp *.icls "$colors_dir"
  done
done

IFS=$PREV_IFS # restore original $IFS
