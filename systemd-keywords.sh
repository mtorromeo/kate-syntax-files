#!/bin/bash
GREP="zgrep -Poh"
MANPAGES="/usr/share/man/man5/systemd.*.5.gz"

replacelist() {
	name=$1
	items=$(echo "$2" | sort | uniq -i | awk '{printf "\\t\\t<item>"$1"</item>\\n"}')
	perl -0777pe 's#<list name="'$name'">.*?</list>#<list name="'$name'">\n'$items'\t</list>#s' -i systemd.xml
}

items=$($GREP '(?<=\\fI)[A-Z][A-Za-z0-9]+(?==\\fR)' $MANPAGES)
replacelist keywords "$items"

items=$($GREP '(?<="\[)[A-Za-z]+(?=\]")' $MANPAGES; $GREP -i '(?<=\[)[A-Za-z]+(?=\]"? section)' $MANPAGES)
replacelist sections "$items"
