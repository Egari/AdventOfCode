#!/bin/bash
input=$1
FIRST=0
LAST=0
SUM=0
for i in `echo $input | sed -e 's/\(.\)/\1 /g'`;
do
	if [ $FIRST -eq 0 ];
	then
		FIRST=$i
	fi

	if [ $LAST -eq 0 ];
	then
		LAST=$i
		continue
	fi

	if [ $LAST -eq $i ];
	then
		let SUM=SUM+$i
	fi

	LAST=$i
done

if [ $LAST -eq $FIRST ];
then
	let SUM=SUM+$LAST
fi

echo $SUM
