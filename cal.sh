#!/usr/bin/zsh
#
#.....................................
#Author: Abdulhaq Arifi
#Date: 08/15/20025
#
#Description : A simple bash script hands on with if..else and math operations
#....................................


echo "please enter first number: "
read num1

echo "please enter the second number: "
read num2

echo "choice the operation ( +, -, *, / ): "
read opt

if [ $opt = "+" ]; 
then 
	echo " ${num1} + ${num2} = $(( ${num1} + ${num2} ))"
elif [ $opt = "-" ];
then
	echo " ${num1} - ${num2} = $(( ${num1} - ${num2} ))"
elif [ $opt = "*" ];
then
        echo " ${num1} * ${num2} = $(( ${num1} * ${num2} ))"	
elif [ $opt = "/" ];
then
	if [ ${num2} -ne 0 ];
	then
        	echo " ${num1} / ${num2} = $(( ${num1} / ${num2} ))"
	else
		echo "Cannot Devid by Zero"
	fi
else
	echo "please choice one of these operators ( +, _, *, /)"