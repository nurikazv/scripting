#!/bin/bash

if [ -n $USER ] && [ ! $USER = "root" ]; then 
    echo "Hello $USER!"
    echo $0 
    echo $#
fi 
