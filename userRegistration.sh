#!/bin/bash -x

echo "Welcome to User Registration"

function validation() {

   var1=$1
   pattern=$2
   if [[ $var1 =~ $pattern ]]
   then
      echo "valid"
   else
      echo "invalid"
   fi

}

function name() {

   echo "Enter the name"
   read name
   namePattern="^[[:upper:]]([[:lower:]]{3,})$"
   validation $name $namePattern

}

function userRegistration() {

   name;
	name;

}

userRegistration;
