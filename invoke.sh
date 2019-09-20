

docker exec \
  cli \
  peer chaincode invoke \
    -C myc \
    -n mycc\
    -c '{"Args":["invoke","a","b","10"]}' 
