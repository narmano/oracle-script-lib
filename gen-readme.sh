#!/bin/bash

baseURL='https://github.com/jkstill/oracle-script-lib/blob/master/sql'
readmeFile='README.md'

heading () {
	local -r idxHdr="$*"
	echo "<h3>$idxHdr</h3>"
	:
}

content () {
	local sqlInfo="$*"
	sqlInfo=${sqlInfo:1}
	local sqlScript=$(echo $sqlInfo | cut -f1 -d:)
	local sqlDesc=$(echo $sqlInfo | cut -f2 -d:)

	echo "<a href='$baseURL/$sqlScript'>$sqlScript</a> -$sqlDesc"

}

echo > $readmeFile

while read line
do
	#echo Line: "=== $line ==="
	# lines ending in : are headings
	# lines beginning with @ are script names and descriptions
	leadingChr=${line:0:1}
	#echo LeadingChar: $leadingChr
	case $leadingChr in
		@) content "$line";;
		*) heading "$line";;
	esac

done < <(grep -vE '^#|^\s*$' INDEX) >> $readmeFile

