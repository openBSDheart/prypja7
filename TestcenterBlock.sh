#Cleanup
rm block
rm block.decoded

#Containeraufruf
docker cp TestcenterUploadscript.sh peer0.org1.example.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/block.sh
docker exec -it peer0.org1.example.com bash block.sh
docker cp peer0.org1.example.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/block block
../bin/./configtxlator proto_decode --input block --type common.Block > block.decoded


#peer channel fetch 0 blockX -c mychannel

#docker exec -it peer0.org1.example.com 
#docker exec -it peer0.org1.example.com bash

#Aktueller Block (dieser existiert natürlich noch nicht)
#peer channel getinfo -c mychannel

#peer channel fetch 0 block -c mychannel 
#docker cp peer0.org1.example.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/block block
#../bin/./configtxlator proto_decode --input block --type common.Block > block.decoded