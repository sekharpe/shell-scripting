#!/bin/sh
echo "script start executing at $TIMESTAMP"
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Please run the script with root access"
else
echo " You are the root user, so you can run the script"
fi
TIMESTAMP=$(date +%F-%H-%M-%s)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
    echo -e "$2 ... Successfull"
    else
    echo -e "$2 ... Failed"
    fi
}


for package in $@
do
yum list installed $package
if [ $? -ne 0 ]
then
    yum install $package -y &>> $LOGFILE
    VALIDATE $? "the package $package"
else
   echo "the package $package is already installed"
  fi
done
