#!/bin/sh

path=$1
expectedContent=$2

echo $path
echo $expectedContent

if [ $path == "" ]; then
    echo "File path not provided"
    exit 1
fi

if [ $expectedContent == "" ]; then
    echo "Expected file contents not provided"
    exit 1
fi

if [ ! -f "$path" ]; then
    echo "Expected file $path does not exist"
    exit 1
fi

actualContent=$(cat $path)
if [ "$actualContent" != "$expectedContent" ];then
    echo "File contents are not correct, expected $expectedContent, recieved $actualContent"
    exit 1
fi
