#1. docker ps aufrufen um $1=CONTAINER ID zu erhalten

#AUFRUF, mit CONTAINERID: 
#. sudo ./dockerVethShort.sh 3ff84f19022a


first=$(docker inspect --format='{{.State.Pid}}' "$1")
echo "$first"

nsenter -t "$first" -n ethtool -S eth0 > nsent.log
grep -o "peer_ifindex: [0-9]*\>" nsent.log | grep -o "[0-9]*\>" nsent.log | head -1 > nsenterg.log
read second < nsenterg.log
echo $second
sudo ip link | grep -o "$second: veth......." | grep -o "veth......."

#grep -r -i "peer_ifindex" nsent.log > grep -o '[0-9]'
#third=$(echo "$second" | grep -o 'peer_ifindex: [0-9]\{12\}') 
#echo third

#echo $1
#last=$(sudo docker inspect --format='{{.NetworkSettings.SandboxKey}}' $1)
#id=$(echo "$last" | grep -o '[0-9a-f]\{12\}') 
#KLAPPT: echo "/var/snap/docker/423/run/docker/netns/620cbe696fc5" | grep -o '[0-9a-f]\{12\}'
#KLAPPT: echo "7325aa62a89e" | grep -o  '[0-9a-f]\{12\}'

#sudo nsenter -t 47791 -n ethtool -S eth0
#sudo ip link | grep 71

#/var/snap/docker/423/run/docker/netns/64513b81c76f
#sudo nsenter --net=/var/run/docker/netns/0881295d863b ethtool -S eth0
#7325aa62a89e

#echo $id #	Ausgabe: 620cbe696fc5



#620cbe696fc5 # das soll ausgeführt werden



#WEG: 1. ID EINGEBEN die aus CONTAINER PS KOMMT
#7325aa62a89e




### OLD BUT WORKED SOMEHOW
#1. docker ps aufrufen um $1=CONTAINER ID zu erhalten
#2. 
#echo $1
#last=$(sudo docker inspect --format='{{.NetworkSettings.SandboxKey}}' $1)
#id=$(echo "$last" | grep -o '[0-9a-f]\{12\}') 
#KLAPPT: echo "/var/snap/docker/423/run/docker/netns/620cbe696fc5" | grep -o '[0-9a-f]\{12\}'
#KLAPPT: echo "7325aa62a89e" | grep -o  '[0-9a-f]\{12\}'

