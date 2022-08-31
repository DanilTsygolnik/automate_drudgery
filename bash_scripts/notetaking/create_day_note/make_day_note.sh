#!/bin/bash

DEFAULT_NOTE_NAME=$(date +"%d-%b-%Y-w%W.md")
FILENAME=${1:-$DEFAULT_NOTE_NAME}
NOTE_DIRECTORY=${2:-$PWD}
DAY_NOTE_FULL_PATH="${NOTE_DIRECTORY}/${FILENAME}"
NOTE_TEMPLATE_PATH=${3:-""}

if ! [[ -e $DAY_NOTE_FULL_PATH ]]; then
    touch $DAY_NOTE_FULL_PATH
fi
