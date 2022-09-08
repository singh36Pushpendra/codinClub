echo "Please enter Employee Status : "
echo "1.Fulltime 2.Parttime"
read type

isFullTime=1
isPartTime=2

perHourSalary=100
logHoursPerDay=8

if [ $type == $isFullTime ]
then
    echo "Fulltime Employee salary : $((perHourSalary*logHoursPerDay))"
elif [ $type == $isPartTime ]
then
    echo "Parttime Employee salary : $((perHourSalary*logHoursPerDay/2))"
else
    echo "Invalid number, Try again :("
fi
