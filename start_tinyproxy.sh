#!/usr/bin/bash

conf_files=($(ls tp_*.conf));

for i in "${!conf_files[@]}"
do 
	echo "Index: $i, Value: ${conf_files[$i]}";
done;

read -p "select configuration: " index

echo "using ${conf_files[$index]}"
tinyproxy -d -c "${conf_files[$index]}"



