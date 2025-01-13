#!/bin/bash
# Example command: sh 1_step_create_packages.sh -i 1_step_create_packages.sh -o OUTPUT
# cksum - check sum. First parameter hash-code. Second file size. THird parameter: filename.

while getopts i:o: flag
do
    case "${flag}" in
        i) inputpath=${OPTARG};;
        o) outputpath=${OPTARG};;
        # f) fullname=${OPTARG};;
    esac
done
# echo "Username: $inputpath";
# echo "Age: $outputpath";
pwd;


ls -vrd "$inputpath";

# 1. Group files.

# -v -> sort by number. -r -> reverse (DESC)
# ls -vr "$inputpath" | grep -x -E '[[:digit:]]+'/ | head -1; # Version 1


max_folder_id=$(ls -vr $inputpath | grep -x -E '[[:digit:]]+' | head -1);

# max_folder_id=${ls -vr $inputpath | grep -x -E '[[:digit:]]+'/ | head -1};
echo "max_folder_id: $max_folder_id";

