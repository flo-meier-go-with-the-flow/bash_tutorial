#!usr/bin/env/bash

seq -s "/" 1 5


#Executing simple arithmetic operations
echo $(( 10*5+15 ))
echo $(( 40/6 ))


bc -l <<< $((5/8))
bc <<< $((5/8))
arithmetic_result=$(echo "scale=2; 22 / 7" | bc -l)
printf "%s\n" "$arithmetic_result" >> test1.txt
arithmetic_result=$(echo "scale=3; 22 / 7" | bc -l)
printf "%s\n" "$arithmetic_result" >> test1.txt
arithmetic_result=$(echo "scale=4; 22 / 7" | bc -l)
printf "%s\n" "$arithmetic_result"
echo "bla" >> test1.txt
echo "bla"
echo $arithmetic_result
echo $arithmetic_result >> test1.txt
echo "$arithmetic_result"
echo "$arithmetic_result" >> test1.txt
