#!/bin/bash
GREP="grep -Poh"
VIMFILE="/usr/share/vim/vimfiles/syntax/nginx.vim"

replacelist() {
	name=$1
	items=$(echo "$2" | sort | uniq -i | awk '{printf "\\t\\t<item>"$1"</item>\\n"}')
	perl -0777pe 's#<list name="'$name'">.*?</list>#<list name="'$name'">\n'$items'\t</list>#s' -i nginx.xml
}

replacelist blocks      "$($GREP '(?<=syn keyword ngxDirectiveBlock ).*' $VIMFILE)"
replacelist important   "$($GREP '(?<=syn keyword ngxDirectiveImportant ).*' $VIMFILE)"
replacelist control     "$($GREP '(?<=syn keyword ngxDirectiveControl ).*' $VIMFILE)"
replacelist errors      "$($GREP '(?<=syn keyword ngxDirectiveError ).*' $VIMFILE)"
replacelist deprecated  "$($GREP '(?<=syn keyword ngxDirectiveDeprecated ).*' $VIMFILE)"
replacelist directives  "$($GREP '(?<=syn keyword ngxDirective ).*' $VIMFILE)"
replacelist third_party "$($GREP '(?<=syn keyword ngxDirectiveThirdParty ).*' $VIMFILE)"
