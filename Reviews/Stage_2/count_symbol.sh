# Reading a single word from user.
read -p "Enter any word : " word

# declaring two arrays.
declare -a symbols
declare -a uniqSymbols
count=0

# Extracting symbols one by one from word.
for symbol in `echo $word | fold -w1`
do
    symbols[$count]=$symbol
    ((count++))
done

count=0

# Setting the very first element at index '0' as it is unique itself.
uniqSymbols[$count]=${symbols[0]}

# Segregating unique symbols from the word and putting them in uniqSymbols array.
for ((i=1; i<${#symbols[@]}; i++))
do
    # Just taking a flag a variable to identify unique symbol.
    flag=0
    for ((j=i-1; j>=0; j--))
    do
        if [ ${symbols[i]} == ${symbols[j]} ]
        then
            flag=1
        fi
    done
    if [ $flag -eq 0 ]
    then
	((count++))
        uniqSymbols[$count]=${symbols[i]}
    fi
done
echo "In the word '$word': "

# Counting number of unique symbol present in uniqSymbols array.
for uniq in ${uniqSymbols[@]}
do
    count=0
    for symbol in ${symbols[@]}
    do
	if [ $uniq == $symbol ]
	then
	    ((count++))
	fi
    done
    echo "'$uniq' present $count time!"
done

