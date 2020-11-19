#!/bin/bash

read -p "enter number1: " a
read -p "enter number2: " b
read -p "enter number3: " c

result1=$(( ($a + $b) * $c ))

echo "result is $result1"
echo "************"


read -p "enter number1: " a
read -p "enter number2: " b
read -p "enter number3: " c
result2=$(( ($a * $b) + $c))
echo "result is $result2"
echo "*************"

read -p "enter number1: " a
read -p "enter number2: " b
read -p "enter number3: " c
result3=$(( ($c + $a) / $b))
echo "result is $result3"
echo "***********"

read -p "enter number1: " a
read -p "enter number2: " b
read -p "enter number3: " c
result4=$(( ($a % $b) + $c))
echo "result is $result4"
echo "*********"

declare -A dict
dict["num1"]=$result1
dict["num2"]=$result2
dict["num3"]=$result3
dict["num4"]=$result4

echo ${dict[@]}

echo "**********"

for key in "${dict[@]}"
do
	if [[ ${dict[$key]} =~ $result ]]
	then
echo "key : ${dict[@]}"
	fi
	
done

