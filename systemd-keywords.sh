#!/bin/sh
keywords=$(zgrep -Poh '(?<=\\fI)[A-Z][A-Za-z0-9]+(?==\\fR)' /usr/share/man/man5/systemd.*.5.gz | sort | uniq | awk '{printf "\\t\\t<item>"$1"</item>\\n"}')
perl -0777pe 's#<list name="keywords">.*?</list>#<list name="keywords">\n'$keywords'\t</list>#s' -i systemd.xml
