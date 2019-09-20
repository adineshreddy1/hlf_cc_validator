

docker exec \
  cli \
  peer chaincode query \
    -C myc \
    -n mycc\
    -c '{"Args":["query","a"]}' 
