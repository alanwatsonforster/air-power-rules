#!/bin/sh

find . -name "*.tex" |
xargs sed 's/{'$1'-[^}]*}/\n&\n/g' | 
grep '^{'$1'-[^}]*}$' | 
sort -u
