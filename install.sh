#!bin/bash

echo "Installing chaincode"
peer chaincode install -p chaincodedev/chaincode -n mycc -v 0

echo "Instantiating chaincode"

peer chaincode instantiate -n mycc -v 0 -C myc -c '{"Args":[]}'  


echo "Invoking  chaincode"
peer chaincode invoke -n mycc -c '{"function":"initLedger","Args":[]}' -C myc

echo "Chaincode Query"


peer chaincode query -n mycc -c '{"Args":["queryCar","CAR1"]}' -C myc

