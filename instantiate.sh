

docker exec \
  cli \
  peer chaincode instantiate \
    -C myc \
    -n mycc \
    -v 0 \
    -c '{"Args":["init","a","100","b","200"]}'
