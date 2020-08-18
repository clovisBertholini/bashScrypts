#!/bin/zsh

my_first_one="My first variable! Nice!"
export my_first_one
echo $my_first_one
sleep 10
printenv |less
unset my_first_one
clear
echo "The global variable my_first_one was successfuly deleted!"
