#Containeraufruf
docker exec -it peer0.org1.example.com bash

#Aktueller Block (dieser existiert natürlich noch nicht)
peer channel getinfo -c mychannel

peer channel fetch 0 block -c mychannel 
docker cp peer0.org1.example.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/block block
./configtxlator proto_decode --input block --type common.Block > block.decoded