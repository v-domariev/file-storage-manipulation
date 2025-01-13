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

# 1. Find max folder id.

# -v -> sort by number. -r -> reverse (DESC)
# ls -vr "$inputpath" | grep -x -E '[[:digit:]]+'/ | head -1; # Version 1


max_folder_id=$(ls -vr $outputpath | grep -x -E '[[:digit:]]+' | head -1);

# max_folder_id=${ls -vr $inputpath | grep -x -E '[[:digit:]]+'/ | head -1};
echo "max_folder_id: $max_folder_id";
max_folder_id=`expr $max_folder_id + 1`;
echo "outptupath/$max_folder_id: $outputpath$max_folder_id";
echo "max_folder_id + 1: $max_folder_id";

mkdir $outputpath$max_folder_id;
# 2.  Transfer files into group.

ls -d $inputpath/* | head -5 |  xargs mv -t $outputpath$max_folder_id/.;

