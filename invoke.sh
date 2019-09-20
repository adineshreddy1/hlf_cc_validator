

docker exec \
  cli \
  peer chaincode invoke \
    -C myc \
    -n chaincodetest \
    -c '{"function":"initLedger","Args":[]}' \
