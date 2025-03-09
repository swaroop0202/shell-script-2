#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
echo "run the script with root user"
else
echo "you are root user"
fi