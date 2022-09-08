declare -a oddNumbers
for ((i=1; i<=30; i++))
do
	if [ $((i%2)) -ne 0 ]
	then
		oddNumbers[$((i-1))]=$i
	fi
done
echo ${oddNumbers[@]}
echo ${#oddNumbers[@]}

for prime in ${oddNumbers[@]}
do
	# echo $prime
	# read -p "Enter any whole number: " n
	flag=0
	for ((i=2; i<$prime; i++))
	do
    	if [ $((prime%i)) == 0 ]
    	then
        	flag=1
	    fi
	done
	if [ $prime -ge 2 ] && [ $flag == 0 ]
	then
    	echo "$prime is a prime number!"
	else
    	echo "$prime is not a prime number!"
	fi

done
