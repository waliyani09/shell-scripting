#!/bin/bash

#Functions are an important element when it comes to making our code DRY (Don't repeat yourself).
#Syntax
#       function function-name(){
#           code-goes-here
#           code-goes-here
#       }
#PS: the keyword function is optional in this case
#Example:
function perform_something(){
    echo "This is an example of a function."
    echo "Now I try to call a second function before first one. Guess what happens?"
    perform_something_again
}
#Calling a function. Do not use parenthesis.
perform_something
#Pitfall: Do not call a function before it is being declared.
function perform_something_again(){
    echo "This is an example of a function."
}
#positional parameters
#just like the bash scripts accept the input, the functions do too. 
#$1 $2... and so on except you can't use $0 to call in the function itself.
#PS: You will need to  mention the parameters in the code field
#Example:
function say_hello(){
    echo "Hello $@"
}

say_hello Azim Veera Shamim Zahir
function hello_loop(){
    for NAME in $@
    do
        echo "Hello $NAME"
    done
}
hello_loop Azim Veera Shamim Zahir