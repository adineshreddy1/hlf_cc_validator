#!/bin/bash

NOW=$(date +"%d.%m.%Y")
FILE=./logs/CCfmt_$NOW.log
FILELint=./logs/CCsynatxlint_$NOW.log
FILEFun=./logs/functionnameCC_$NOW.log
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
echo "Building object for chaincode"
cd chaincode
go build -o chaincode
