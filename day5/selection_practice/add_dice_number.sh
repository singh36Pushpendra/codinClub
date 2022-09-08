RANGE=$((6-1+1))
num1=$(($(($RANDOM%$RANGE))+1))
num2=$(($(($RANDOM%$RANGE))+1))
echo "Addition of dice number $num1 and $num2 = $((num1+num2))"

