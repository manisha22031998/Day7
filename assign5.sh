#! /bin/bash -x
declare -a arr
i=0
for (( num=1;num<100;num++ ))
do
	if [ $((num%11)) -eq 0 ]
	then
		arr[((i++))]=$num
	fi
done
echo ${arr[@]}
