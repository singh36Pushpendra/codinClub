user_data=`echo $usersecret`
value="dH34xJaa23"
echo "$user_data $value"
if [ "$user_data" == $value ] 
then
    echo "error: usersecret already set!"
else
    export usersecret=$value
    echo "usersecret set successfully!"
fi
