#!/bin/bash
filedir="$1"
searchstr="$2"

file_count=$(find "$filedir" -type f | wc -l)

match_count=$(find "$filedir" -type f -exec grep "$searchstr" {} + | wc -l)
echo "The number of files are ${file_count} and the number of matching lines are ${match_count}" 
