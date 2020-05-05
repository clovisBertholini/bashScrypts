#!/bin/zsh

#*=============================================================================
# Author: Clovis Wanderley Bertholini Sobrinho
# Date: May, 5, 2020
# Target: learn shell script
# Subject: Environment Variables
# This script creates a global variable, set its value, show it on environment
# and, after that delete it and message us "the global variable my_first_one
# was sucsessfuly deleted!"
#==============================================================================
# i. Environment Variables
#
# Some programs needs information about the user and about his preferences to
# run, in order to avoid that you need to pass its informations every time at
# each command that the shell runs, It create an environment with some
# variables.
#
# there are two types of variables:
#
# i.i. Global
#
# They are globas variables because its can passed on to all subprocesses' shell,
# even another shell. To see them, we use the commands env and printenv, both
# shows the environment variables on terminal.
#
# Exemples:
# PATH --> stores directories' paths with executebles programs
# USERNAME --> stores the user logged in
# HOME --> stores the user's home directory
# RANDOM --> stores a random number
#
# To create a global variable, we need create a local variable first and then 
# export it whit command export. In order to keep our environment organized,
# when we create some variable, better do that with lowercase names to
# differenciate from system's variables (that are all uppercse names).
#
# The new variable is created by typing without spaces:
#
# variable_name=value
#
# Before that you must to know that the variables' name can't use special 
# characters like ! @ # $ % and ohers, only is aceptable the underline 
# character _. They also can't begin with _ or numbers and, at last, they
# can't have spaces.
#
# Well, now we can export to turn variable_name a global variable:
#
# export variable_name
#
# Now, if we need reference its value, must have indicate it put a $
# character at the valiables' name begin, like $variable_name. If we want to
# see its value, type echo command before:
#
# echo $variable_name
#
# and then it'll print on terminal:
#
# value
#
# i.ii. Local
#
# They are the same as a global, but they are valids only at the actual session
# and before it's finished, the local variable don't exist any more.
#==============================================================================

my_first_one="My first variable! Nice!"
export my_first_one
echo $my_first_one
printenv |less
unset my_first_one
clear
echo "The global variable my_first_one was successfuly deleted!"
