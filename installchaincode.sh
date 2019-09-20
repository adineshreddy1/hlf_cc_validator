
docker exec \
  cli \
  peer chaincode install \
    -n chaincodetest \
    -v 0 \
    -p chaincodedev/chaincode 
