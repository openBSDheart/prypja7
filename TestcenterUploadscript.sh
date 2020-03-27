#Containeraufruf
#Aktueller Block (dieser existiert natürlich noch nicht)
peer channel fetch 0 block -c mychannel
exit
#docker cp peer0.org1.example.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/block block
#../bin/./configtxlator proto_decode --input block --type common.Block > block.decoded