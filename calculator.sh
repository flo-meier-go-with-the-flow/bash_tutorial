#!/usr/bin/env bash

do_operation() {
#echo "$(( $1 ))"
arithmetic_result=$(echo "scale=2; $1" | bc -l)
printf "%s\n" "$arithmetic_result"
printf "%s\n" "$arithmetic_result" >> operation_history.txt
}

check_input2() {
re='^[-\.0-9 ]+ [-,+,*,/,^] [-\.0-9]+$'
if [[ $1 =~ $re ]]; then
    do_operation "$1"
else
    echo1 "Operation check failed!"
fi
}
echo1() {
echo $1
echo $1 >> operation_history.txt
}

echo "Welcome to the basic calculator!"
echo "Welcome to the basic calculator!" > operation_history.txt
echo1 "Enter an arithmetic operation or type 'quit' to quit:"
read i1
echo "$i1" >> operation_history.txt
while [ "$i1" != "quit" ]; do
	check_input2 "$i1"
	echo1 "Enter an arithmetic operation or type 'quit' to quit:"
	read i1
	echo "$i1" >> operation_history.txt
done
echo1 "Goodbye!"
