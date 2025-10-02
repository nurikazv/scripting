#!/bin/bash

ls /etc > out.txt
ls /notreal &> err.txt
date >> out.txt
cat out.txt err.txt
