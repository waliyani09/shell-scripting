#!/bin/bash
# This is how you declare a variable
STRING = "Hello World"
# This is how you display output
echo $STRING
#1 Let us talk about She-bang!
# It is usually denoted by "#!"
# She-bang is usually used to denote the path where the shell script is installed.
# It is an indicator to show where to interpret the given file.
#---------------------------------------------------------------------------------
#2 Printing messages on a screen.
# echo command is used to print message on a screen. If you use echo "Hello World!", then you can 
# have the message "Hello World" on the screen. 
# In order to refer to a variable, we print ${VARIABLE_NAME}.
# Alternatively, you can also use printf command to print the output on the screen.
#3 Using an escape sequence in bash scripting echo command.
# In order to enable escape sequencing, we add -e in front of echo command.
# For example: echo -e "First message\nSecondmessage." ->This is for new line character.
#4 Printing the text in different colors.
# This can be done by adding \e[COLORCODEm in the message.
# The color codes are from the range as follows:
# 31 red
# 32 green
# 33 yellow
# 34 blue 
# 35 magenta 
# 36 cyan
# 0 no color. Please see that you need to disable the color as well.
# For example:
echo -e "\e[31mThe text in red color."
#5 Increasing the brightness and making the bold color
# Syntax: This can be done by adding \e[1;COLORCODEm in the message.
# -----------------------------VARIABLES-------------------------------------------------------------
# If we assign a name to a set of data, it is known as variable.
# We dont need to explicitly specify data type, just name the variable. 
# Anyways, shell will always consider every data type as a String. You have to work accordingly.
# If your data consist of any special character, use double quotes to specify the entire data
# For example if x=1*2, then write it as x= "1*2"
# In bash, we access variable as $VARIABLE_NAME or ${VARIABLE_NAME}
# ----------GETTING THE DATA DYNAMICALLY----------------------------------
# For example, DATE = {current_date}, you can say DATE = $(date +%F)
# In bash, you can use () to use a command. In this case, we are using date command.
#  echo Welcome! Today's date is $DATE 
# ---------------ARITHMETIC SYNTAX------------------------------------------
# ((Anything inside double circular brackets will be an arithmetic operation))
