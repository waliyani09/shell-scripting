#!/bin/bash


echo "Installing MongoDB"
echo "Installing Catalogue"
echo "Installing Redis"
echo "Installing User"
echo "Installing Cart"
echo "Installing MySQL"
echo "Installing Shipping"
echo "Installing RabbitMQ"
echo "Installing Payment"
echo "Installing Frontend"
# Problems with above approach
# Cannot keep all components in one scripts.
#   We have different servers.
# Making different scripts for each server.
#   User error. We can choose wrong script.
#   Also, cant make a DRY code.
##We can use single script, but call all individual scripts.
