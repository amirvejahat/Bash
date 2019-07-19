#!/bin/bash

for pid in $(ps axo pid=,stat= | awk '$2~/^Z/ { print $1 }' );do

	echo "$pid"

done
