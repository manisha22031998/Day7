#! /bin/bash -x
declare -a arr
j=0
for (( i=2;i<=10;i++ ))
do
	if [ $((i%2)) -eq 0 ]
	then
		arr[((j++))]=$i
	else
		echo ODD
	fi
done
echo ${arr[@]}
for even in ${arr[@]}
do
	echo $even
done
