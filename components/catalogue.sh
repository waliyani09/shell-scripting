#!/bin/bash
Status_check(){
    if [$? -eq 0]
    then
        echo -e"\e[32mSUCCESS\e[0m"
    else
        echo -e"\e[31mFAILURE\e[0m"
    fi
}
#Validation if user is root
if ["$uid" -ne 0]
then
    echo -e "\e[1;33mYou should execute this script as a root user\e[0m"
fi
