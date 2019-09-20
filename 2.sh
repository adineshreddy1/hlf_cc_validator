 docker exec -it chaincode bash 
CORE_PEER_ADDRESS=peer:7052
CORE_CHAINCODE_ID_NAME=mycc:0 ./
go build -o cc
