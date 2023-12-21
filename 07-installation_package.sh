#!/bin/bash
echo "script start executing at $TIMESTAMP" &>>$LOGFILE
ID=$(id -u)
if ($ID -ne 0)
then
echo "Please run the script with root access"
else
echo " You are the root user, so you can run the script"
fi
TIMESTAMP=$(date +%F-%H-%M-%s)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE()
{
    if ($1 -ne 0)
    then
    echo " $2 ... Successfull"
    else
    echo " $2 ... Failed"
}


for package in $@
do
yum list installed $package
  if ($? -ne 0)
  then
    yum install $package -y &>> $LOGFILE
    VALIDATE()$? "the package $package"
  else
   echo "the package $package is already installed"
  fi
done
