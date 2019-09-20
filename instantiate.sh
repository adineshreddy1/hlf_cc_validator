

docker exec \
  cli \
  peer chaincode instantiate \
    -C myc \
    -n mycc \
    -v 0 \
    -c '{"Args":[]}'
