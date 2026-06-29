#!/bin/sh

if [ $# -ne 2 ]
then
    echo "Invalid number of arguments"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]
then
    echo "Directory does not exist"
    exit 1
fi

numfiles=$(find "$filesdir" -type f | wc -l)
matchinglines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $numfiles and the number of matching lines are $matchinglines"