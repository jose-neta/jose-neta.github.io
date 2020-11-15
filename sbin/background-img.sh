#!/usr/bin/env bash

# make mountains.svg url encoded

cat mountains.svg |
python -c 'import urllib.parse;import sys; print(urllib.parse.quote(sys.stdin.read()))' |
perl -pe 's/((%20)+)/%20/g'
