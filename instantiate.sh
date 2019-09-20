
docker exec \
  cli \
  peer chaincode instantiate \
    -C myc \
    -n chaincodetest \
    -v 0 \
    -c '{"Args":[]}'
