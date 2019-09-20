
docker exec \
  cli \
  peer chaincode install \
    -n mycc \
    -v 0 \
    -p chaincodedev/chaincode 
