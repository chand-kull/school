#!/bin/bash

echo "all variables: $@"
echo "number of variabes pass: $#"
echo "script name: $0"
echo " current working directory: $PWD"
echo "home direcory of the current user : $HOME"
echo "which user is runninf this script; $USER"
echo "hostname; $HOSTNAME"
echo "process id of the corrent shall script $$"
sleep 60
echo "process id of last background command ; $!"

echo " exit status $?"