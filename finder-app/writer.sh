#!/bin/bash
writefile="$1"
writestr="$2"
dirpath=$(dirname "$writefile")

mkdir -p "$dirpath"

echo "$dirpath"
echo "$writefile"
touch "$writefile"
echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
	exit 1
fi

