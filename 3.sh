

 docker exec -it cli bash 


peer chaincode install -p chaincodedev/chaincode -n mycc -v 0
echo "Chaincode installed"


peer chaincode instantiate -n mycc -v 0 -C myc -c '{"Args":[]}'  
echo "Instantied "

peer chaincode invoke  -C myc -n mycc -c '{"Args":["AddPlan","{\"ObjType\":\"AddPlan\",\"NodeName\":\"ER66.0000003X\",\"Contractor\":\"Allinq\",\"RFCNumber\":\"CRQ000000798752\",\"UserId\":\"Elbert\",\"TypePlanDate\":\"New\",\"Priority\":\"High\",\"Status\":\"New\",\"LastDateChangeTime\":\"11.03.2020 14:30 CET\"}"]}'

echo "Invoked "
