#!/bin/bash
# Example command: sh 1_step_create_packages.sh -i 1_step_create_packages.sh -o OUTPUT

while getopts i:o: flag
do
    case "${flag}" in
        i) inputpath=${OPTARG};;
        o) outputpath=${OPTARG};;
        # f) fullname=${OPTARG};;
    esac
done
echo "Username: $inputpath";
echo "Age: $outputpath";
# echo "Full Name: $fullname";

echo "hello world!";
cat $inputpath;
# cksum - check sum. First parameter hash-code. Second file size. THird parameter: filename.




# 1. Group files.
