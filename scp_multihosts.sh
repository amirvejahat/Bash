#!/bin/bash

source_file="example.txt"
path="usr/local/"

while IFS= read -r dest;do

	scp $source_file "$dest:/$path"

done < dsthosts.txt
