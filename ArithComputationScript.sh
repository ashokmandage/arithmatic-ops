#!/bin/bash -x
read -p echo'enter input number1: ' num1
read -p echo'enter input number2: ' num2
read -p echo'enter input number3: ' num3

computationResult1=$(($a + $b * $c))
echo $computationResult1

computationResult2=$(($a * $b + $c))
echo $computationResult2

computationResult3=$(($c + $a / $b))
echo $computationResult3

computationResult4=$(($a % $b + $c))
echo $computationResult4

declare -A computationDict

computationDict[0]=$computationResult1
computationDict[1]=$computationResult2
computationDict[2]=$computationResult3
computationDict[3]=$computationResult4

echo ${computationDict[@]}

declare -a resultArray

for (( i=0;i<=${#computationDict[@]};i++))
do
resultArray[$i]=${computationDict[$i]}
done

echo ${resultArray[@]}
