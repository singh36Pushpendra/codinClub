read -p "Enter any name : " name
if [ $name == "Pushpendra" ]
then
    echo "I am from Dewas (M.P)"
elif [ $name == "Manish" ]
then
    echo "You are from Pune (Maharastra)"
elif [ $name == "Ankit" ]
then
    echo "He is from Tikamgarh (M.P)"
else
    echo "Please check your input it's invalid:("
fi
