#! /bin/bash -x

declare -a arr
for (( i=0;i<3;i++ ))
do
	read arr[$i]
done
echo ${arr[@]}
sum=0
for i in ${arr[@]}
do
	((sum+=$i))
done
if [ $sum -eq 0 ]
then
	echo sum is equal to 0
else
	echo sum is not 0
fi
