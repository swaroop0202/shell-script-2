#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
echo "run the script with root user"
else
echo "you are root user"
fi

validate ()
if [ $1 -ne 0]
then
    echo "$2...FAILURE"
else
    echo "$2...SUCCESS"


dnf install mysql-server -y

if [ $? -ne 0 ]
then
    echo "installation of mysql failure"
else 
    echo "installation success"
fi

systemctl enable mysqld

if [ $? -ne 0 ] 
then
    echo "enable of mysql failure"
else 
    echo "enable success"
fi

