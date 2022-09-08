read -p "Enter x value: " x
read -p "Enter y value: " y
if [ $x -le $y ]
then
    echo "$x <= $y"
else
    echo "$x > $y"
fi
