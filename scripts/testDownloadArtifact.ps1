#!/bin/sh

if [ "$1" == "" ]; then
    echo "File path not provided"
    exit 1
fi

if [ "$2" == "" ]; then
    echo "Expected file contents not provided"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Expected file $1 does not exist"
    exit 1
fi

fileContent=$(cat $1)
if [ "$2" != "$fileContent" ];then
    echo "File contents are not correct, expected $2, recieved $fileContent"
    exit 1
fi
