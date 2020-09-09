#! /bin/bash -x
declare -a arr
for (( i=0;i<10;i++ ))
do
	arr[$i]=$((RANDOM%899+100))
done
echo ${arr[@]}
firstmax=0
secondmax=0
secondmin=0
firstmin=0
for (( i=0;i<10;i++ ))
do
	num=${arr[$i]}
	if [ $i -eq 0 ]
	then
		firstmax=$num
		secondmax=$num
		secondmin=$num
		firstmin=$num
	fi
	if [ $num -gt $firstmax ]
	then
	secondmax=$firstmax
	firstmax=$num
	elif [ $num -gt $secondmax ]
	then
		secondmax=$num
	elif [ $num -lt $firstmin ]
	then
		secondmin=$firstmin
		firstmin=$num
	elif [ $num -lt $secondmin ]
	then
		secondmin=$num
	fi
done
echo ${arr[@]}
echo 2nd maximum is $secondmax
echo 2nd minimum is $secondmin
