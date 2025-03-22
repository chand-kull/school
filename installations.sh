#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then    
    echo " please run this script with root access."
    exit 1
echo " you are super user."
fi

dnf instll mysql -y
if [ $? -ne 0]
then 
    echo "installation of mysql...FAILURE"
    exit 1
else
    echo "installation of mysql...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0]
then 
    echo "installation of mysql...FAILURE"
    exit 1

else
    echo "installation of git...SUCCESS"    
fi

echo "is scripting proceding?"