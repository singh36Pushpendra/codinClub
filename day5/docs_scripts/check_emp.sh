isPresent=1
checkRandom=$((RANDOM%2))

if [ $isPresent -eq $checkRandom ]
then
    empRatePerHr=20
    empHrs=8
    salary=$(( empRatePerHr * empHrs ))
    echo "Employee salary = $salary"
else
    salary=0
    echo "Employee salary = $salary"
fi
