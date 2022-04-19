#!/bin/bash

read string
echo $string | rev
let len=${#string}
revsub=$(echo $string | tr a-y b-z | tr z a | tr A-Y B-Z | tr Z A)
echo $revsub | rev
for((i=(($len-2)/2);i>=0;i--))
do
	revhalf=$revhalf${string:$i:1}
done

for((i=($len/2);i<$len;i++))
do
	revhalf=$revhalf${string:$i:1}
done
echo $revhalf
