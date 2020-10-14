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

function password() {

	echo "Enter the password"
   read password
   passwordPattern="^[a-zA-Z]{8,}$"
   validation $password $passwordPattern

}
function mobile() {

	echo "Enter Mobile number"
	read mobile
	mobilePattern="^[0-9]{2}[ ][0-9]{10}$"
	if [[ $mobile =~ $mobilePattern ]]
   then
      echo "valid"
   else
      echo "invalid"
   fi

}

function email() {

   echo "Enter the Email Id"
   read email
   emailpattern="^[0-9a-zA-Z]+([._+-][a-zA-Z0-9]+)?@[a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$"
   validation $email $emailpattern

}

function name() {

   echo "Enter the name"
   read name
   namePattern="^[[:upper:]]([[:lower:]]{3,})$"
   validation $name $namePattern

}

function userRegistration() {

   ##name;
	##name;
	##email;
	##mobile;
	password;

}

userRegistration;
