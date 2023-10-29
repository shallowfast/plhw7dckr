#!/bin/sh
nc -l -p 1814 -w 20 > log
echo "checking log file after transfer"
cat log