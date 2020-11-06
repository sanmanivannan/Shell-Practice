#!/bin/bash

echo "enter the directory name:"

read direct

if [-d "$direct" ] then

echo"direcorty $direct exists" else

echo"directory $direct doesnt exists" 

echo" press "c" to create a directory
read c

mkdir $direct
echo"directory $direct is created now"

fi