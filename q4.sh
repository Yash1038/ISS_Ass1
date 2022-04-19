#!/bin/bash
read input
arr=($(echo $input | tr ',' ' '))
size=${#arr[@]}

check=0

for((i=0;i<$size-1;i++))
do
	check=0
	for(( j=0;j<$size-$i-1;j++ ))
	do
		if [ ${arr[$j+1]} -lt ${arr[$j]} ];
		then
			temp=${arr[$j+1]}
			arr[$j+1]=${arr[$j]}
			arr[$j]=$temp
			check=1
		fi
	done

	if [[ $check -eq 0 ]];
	then
		break
	fi
done
echo ${arr[@]}