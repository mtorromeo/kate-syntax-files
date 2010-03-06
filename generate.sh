#!/bin/sh
for lang in javascript html css; do
	cat /usr/share/apps/katepart/syntax/${lang}.xml | perl generate-mako.pl > ${lang}-mako.xml
done
