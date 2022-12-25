#!/bin/bash/
read -p "Please enter the hostname:" HOST
ping -c 1 $HOST
if [ "$?" -eq "0" ]
then 
    echo "The ${HOST} is reachable"
else    
    echo "${HOST} is not reachable"
fi

#in this case, we used the exit code 0 as a way of checking wether the host entered by the user is reachable or not.

#*******Adding logical operators to enhance the logic of your code******
#Logical and &&
#Logical OR || 
ping -c 1 $HOST && echo "The site ${HOST} is reachable..."
#using a semicolon. What it means and wether or not you should use it.
#semicolon will bypass the exit status checking and will execute irrespective
#of wether or not previous command was executed successfully.

#*************The exit command****************************************** 
# the exit command has a syntax of exit followed by the number.
#If you dont provide the code, then it will pick up the exit status from the last operation performed in the
#Shell script.
read -p "Please enter the hostname:" HOST
ping -c 1 $HOST
if [ "$?" -eq "0" ]
then 
    echo "The ${HOST} is reachable"
    exit 0
else    
    echo "${HOST} is not reachable"
    exit 1
fi