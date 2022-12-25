#!/bin/bash/
#By default, all the variables in a script are global unless explicitly declared local 
#using local keyword.
#It is important to understand that variables are declared before being used.
GLOBAL_VARIABLE=1
function model_function(){
    GLOBAL_VARIABLE=2
}
echo "The value before executing the function is ${GLOBAL_VARIABLE}."
model_function
echo "The value after executing the function is ${GLOBAL_VARIABLE}."

#It is a best practice to always use keyword 'local' when declaring a variable
#that is only useful inside a function.
#**************EXIT STATUS IN A FUNCTION*****************************
#In functions, you can change the exit status of a function using the 'return' keyword.
#As always, you can always check for exit status by using $? command
#Create a shell script that checks if a file exists and backs it up.
function backup_file(){
    #This function creates a backup of a file. 

    #Make sure your file exists. 
    if [ -f "$1" ]
    then
        #Make a BACKUP_FILE variable
        local BACKUP_FILE="/tmp/$basename ${1}.$date +%F.$$"
        echo "Backing up $1 to ${BACKUP_FILE}"
        cp $1 $BACKUP_FILE
    else
        return 1
    fi
    
}