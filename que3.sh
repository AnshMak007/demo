#!/bin/bash

files=$(find . ! -path . -type f | wc -l)

exe=$(find . ! -path . -executable | wc -l)

dir=$(find . ! -path . -type d | wc -l)

echo "The number of files in current directory is: $files"
find . ! -path . -type f

echo "The number of executable files in current directory is: $exec"
find . ! -path . -executable

echo "The number of sub-directories in current directory is: $dir"
find . ! -path . -type d


