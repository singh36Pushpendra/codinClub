echo "Please enter any input: "
echo "Enter 1 for 'Addition'"
echo "Enter 2 for 'Substraction'"
read userInput

read -p "Enter x value : " x
read -p "Enter y value : " y

result=0

if [ $userInput == 1 ]
then
    result=$((x+y))
elif [ $userInput == 2 ]
then
    result=$((x-y))
else
    echo "Please enter valid number :("
fi
echo "Answer = $result"
