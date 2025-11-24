#!/usr/bin/bash

conf_files=($(ls tp_*.conf));

for i in "${!conf_files[@]}"
do 
	echo "Index: $i, Value: ${conf_files[$i]}";
done;

read -p "select configuration: " index

echo "bingo ${conf_files[$index]}"
#tiny -d -c ""



