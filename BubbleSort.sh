numbers=(11 6 9 7 5)
echo ${numbers[@]}

temp=0
bubble=0
for ((i=0; i<5-1; i++))
do
	for ((j=0; j<5-i-1; j++))
	do
		bubble=${numbers[j]}
		if [ $bubble -gt ${numbers[j+1]} ]
		then
			temp=${numbers[j+1]}
			numbers[j+1]=$bubble
			numbers[j]=$temp
		else
			bubble=${numbers[j+1]}
		fi
	done
done
echo ${numbers[@]}
