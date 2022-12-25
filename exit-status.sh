read -p "Please enter the hostname:" HOST
ping -c 1 $HOST
if [ "$?" -eq "0" ]
then 
    echo "The host is reachable"
else    
    echo "host is not reachable"
fi

#in this case, we used the exit code 0 as a way of checking wether the host entered by the user is reachable or not.
