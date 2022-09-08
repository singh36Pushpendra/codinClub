echo "Please enter:"
echo "1.ADD 2.SUB 3.MUL 4.DIV"
echo "Enter your choice : "
read userInput

read -p "Enter the X value : " X
read -p "Enter the Y value : " Y

result=0

if [ $userInput == 1 ]
then
    result=$((X+Y))
elif [ $userInput == 2 ]
then
    result=$((X-Y))
elif [ $userInput == 3 ]
then
    result=$((X*Y))
elif [ $userInput == 4 ]
then
    result=$((X/Y))
else
    echo "Please enter valid number :("
fi

echo "Result of $X and $Y : $result"
