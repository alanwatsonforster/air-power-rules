#!/bin/sh

find . -name "*.tex" |
grep -v project.tex |
xargs sed 's/{'$1'-[^}]*}/\n&\n/g' | 
grep '^{'$1'-[^}]*}$' | 
sort -u >rules.changetags

sed 's/{'$1'-[^}]*}/\n&\n/g' project.tex | 
grep '^{'$1'-[^}]*}$' | 
sort -u >project.changetags

diff -y project.changetags rules.changetags
