read -p "Enter first number : " num1
read -p "Enter second number : " num2
read -p "Enter third number : " num3
read -p "Enter fourth number : " num4
read -p "Enter fifth number : " num5

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ] && [ $num1 -gt $num4 ] && [ $num1 -gt $num5 ] 
then
    echo "Maximum value = $num1"
elif [ $num2 -gt $num3 ] && [ $num2 -gt $num4 ] && [ $num2 -gt $num5 ]
then
    echo "Maximum value = $num2"
elif [ $num3 -gt $num4 ] && [ $num3 -gt $num5 ]
then
    echo "Maximum value = $num3"
elif [ $num4 -gt $num5 ]
then
    echo "Maximum value = $num4"
else
    echo "Maximum value = $num5"
fi
