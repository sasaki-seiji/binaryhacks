#!/bin/sh
if [ $# -ge 2 ]
then
	count=$1
	shift
else
	echo "usage: $0 count command..." 1>&2
	exit 1
fi

error=0 error_sum=0 i=0
while [ $i -lt $count ]
do
	"$@"
	status=$?
	if [ $status -gt 0 ]
	then
		error=$((error+ 1))
		error_sum=$((error_sum + status))
	fi
	i=$((i + 1))
done

echo "error=$error/$count, error_sum=$error_sum"
