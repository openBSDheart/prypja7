#Cleanup
rm block
rm block.decoded

#Scriptupload in Container
docker cp TestcenterBlockdumpServerpart.sh peer0.org1.example.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/block.sh
#Container Scriptaufruf
docker exec -it peer0.org1.example.com bash block.sh

#Wieder zurück, lokal Blockkopie von laufendem Container holen
docker cp peer0.org1.example.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/block block
#Block dekodieren und sichern im Arbeitsverzeichnis
../bin/./configtxlator proto_decode --input block --type common.Block > block.decoded
