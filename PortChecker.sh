#!/bin/bash

# Get the process which listens on specified port
# $1 is the port we are looking for
# You must use this script like this: "./checkport <pid>" 

if [ $# -lt 1 ]
then
echo “Please provide a port number parameter for this script”
echo “e.g. $0 22″
exit
fi

echo “Greping for your port, please be patient (CTRL+C breaks) … ”
sleep 1

for i in `ls /proc`
do
pfiles $i | grep AF_INET | grep $1
if [ $? -eq 0 ]
then
echo Is owned by pid $i
fi
done
