#!/bin/bash
SUM=0

while read -r line;
do 
	SMALL=-1
	LARGE=-1
	for i in $line;
	do
		LARGE=$(( $i > $LARGE || $LARGE < 0 ? $i : $LARGE ))
		SMALL=$(( $i < $SMALL || $SMALL < 0 ? $i : $SMALL ))
	done
	let DIFF=LARGE-SMALL
	let SUM=SUM+DIFF
done < "$1"

echo $SUM
