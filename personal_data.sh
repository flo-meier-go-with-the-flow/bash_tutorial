#!/usr/bin/env bash

review_inputs() {
echo "You gave the following arguments: $*"
}

review_inputs $*
echo "You provided $# facts about yourself!"
echo "Your name is $1"
echo "Your age is $2"
echo "test $@"
echo "and this: $*"
