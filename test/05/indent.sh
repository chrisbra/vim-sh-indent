#!/bin/bash
# Test:
# Indentation should work for if/fi sections with or without trailing ';'
if [ "$1" == "test" ];
then
echo "$1";
fi
if [ "$1" == "1" ];
then
echo "test";
fi;
if [ "$2" == "2" ];
then
echo "test";
fi;
