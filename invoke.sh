

docker exec \
  cli \
  peer chaincode invoke \
    -C myc \
    -n mycc\
    -c '{"function":"initLedger","Args":[]}' \
