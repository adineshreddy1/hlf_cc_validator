# hlf_cc_validator

This repo helps for checking your chaincode syntax,functionalities defined in your chaincode,invoke and query's written in golang
Developers who try to build their Blockchain Application,have to write/execute/check their chaincode's.
So, no need to setup their network and to check their chaincode logic.
<br/> This is build with reference of chaincodedev mode with SingleSampleMSPSolo orderer and peer runs in dev mode.

<br/>1)Provides the syntax check of your chaincode written in golang,if any errors it shows in logs.
<br/>2)Retrives functionalities defined in your chaincode.
<br/>3)Can install/instantiate/query of your chaincode.


**Step to execute**


Keep your **chaincode** to validate in chaincode folder
 <br/> 1)./Stop.sh--> stops your running containers and downs the network
 <br/>2)./Remove.sh --> removes the binaries of ur chaincode.
  <br/>3)./Start_test.sh --> Gives the basic syntax check, retrives the functionality , pushes if any error into log folder
 <br/> 4)./1.sh --> Brings your network (in Terminal 1)
 <br/> 5)./2.sh  --> start of ur chaincode container
 <br/>      run  ./build.sh  --> start of ur chaincode container
  <br/>6)./installchaincode.sh --> install chaincode
 <br/> 7)./instantiate.sh --> instantiates chaincode
  <br/>8)For invoke and query you can modify based on your arguments 
