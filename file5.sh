#!/bin/bash
# simple calc
while true; 
	do
		echo "addition = a"
		echo "soustraction = s"
		echo "multiplication = m"
		echo "division = d"
		echo "quitter = q"
		echo "choose your operation : "
		read op

		if [ "$op" = "q" ];then
			echo "Au revoir"
			break
		fi

		echo "num1 : "
		read num1

		echo "num2 : "
		read num2
		

		if [ "$op" = "a" ];then
			echo "result of operation for $num1 and $num2 is $((num1 + num2))"
		elif [ "$op" = "s" ];then
			echo "result of operation for $num1 and $num2 is $((num1 - num2))"
		elif [ "$op" = "m" ];then
			echo "result of operation for $num1 and $num2 is $((num1 * num2))"
		elif [ "$op" = "d" ];then
			if [ $num2 -eq 0 ];then
				echo "error : zero division"
			else
				echo "result of operation for $num1 and $num2 is $((num1 / num2))"
			fi
		else
			echo "error : invalid choice"
		fi
		done