#!/bin/bash

echo "After sort: "
arr=("$@")

printf '%s\n' "${arr[@]}"|sort -n
