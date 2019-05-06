#!/bin/bash

awk '{if(NR==3) print $0}' index.jsp > new_index
cat new_index
version=$(cut -c 7 new_index)
echo "$version"
test=$((version+1)) 
echo "$test"
#i=$((i+1))
sed -i "s/$test/$version/g" new_index > free
#sed `echo s/@appversion/${TAG_VERSION}/g` $ApplicationVersionFile > headerfile
cat free
