#!/bin/bash

NOW=$(date +"%d.%m.%Y")
FILE=./logs/fmt_$NOW.log
FILELint=./logs/lint_$NOW.log
FILEFun=./logs/func_name_$NOW.log
set -e

if [ ! -d "logs" ]
then
mkdir logs
else
    echo "check all the syntax logs and funtion logs in 'logs' folder"
fi

echo "Starting chaincode validating syntax"

gofmt -e ./chaincode/*.go >> "$FILE"
golint ./chaincode/*.go >> "$FILELint"
echo "Done with  validating chaincode check in logs folder "


echo "Printing function names in golang file "
grep ^func  ./chaincode/*.go >> "$FILEFun"
echo "Check for func names in logs folder"
