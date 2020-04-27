#!/usr/bin/env sh

cd "$FILES_DIRECTORY" || exit 1
ruby "$NORMEZ_DIRECTORY"/NormEZ.rb "$*"
