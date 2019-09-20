xterm -e docker exec -it chaincode bash 
sleep 300

cd /opt/gopath/src/chaincodedev

go build -o cc

CORE_PEER_ADDRESS=peer:7052
CORE_CHAINCODE_ID_NAME=mycc:0 ./
go build -o cc
