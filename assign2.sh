#! /bin/bash -x
declare -a arr
for (( i=0;i<10;i++ ))
do
        arr[$i]=$((RANDOM%899+100))
done
echo ${arr[@]}
echo second largest
for each in ${arr[@]}
do
	echo $each
done | sort -nr | head -2 | tail -1
echo second smallest
for each in ${arr[@]}
do
        echo $each
done | sort -n | head -2 | tail -1
