#!/bin/bash


USERID=$(id -d)

VALIDATE(){
    echo "Ecit status:$1"
    echo "what are you doing:$2"
}

if [ $USERID -ne 0 ]
then
    echo "please rrun this script with root access."
    exit 1 
else
    echo "you are super user."
fi

dnf install mysql -y 
VALIDATE $? "installing MySQL"

dnf install git -y 
VALIDATE $? "installing MySQL"