#!/bin/bash

i=1;
while((i < 100)); do
	echo "file $i" >> "$i.txt";
	i=$((i+1));
done
