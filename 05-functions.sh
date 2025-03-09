#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
echo "run the script with root user"
else
echo "you are root user"
fi

validate () {
if [ $1 -ne 0]
then
    echo "$2...FAILURE"
else
    echo "$2...SUCCESS"
fi
}


dnf install mysql-server -y

validate "$?" "installing mysqld"

systemctl enable mysqld

validate "$?" "enabling mysqld"