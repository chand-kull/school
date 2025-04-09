#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "Exit status:$1"
    echo "what are you doing: $2"
}

if [ $USERID -ne 0 ]
then 
    echo "please run this script with root assess"
    exit 1
else
    echo "you are super user"
fi

yum install mysql -y
VALIDATE $? "Installing MySQL"

yum install mysql -y
VALIDATE $? "Installing MySQL"