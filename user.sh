#!/bin/bash
echo -en "username: "
read USERNAME
if
  id -u $USERNAME > -1
then
  echo "USER ALREADY EXISTS!"

else
  echo -en "FULL NAME: "
  read FULLNAME
  echo -en "Password: "
  read PASSWORD
   
  useradd -c "$FULLNAME" $USERNAME -p $PASSWORD

fi
