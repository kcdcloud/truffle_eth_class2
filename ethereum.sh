sudo apt update && sudo apt upgrade
sudo apt install curl git vim build-essential
sudo apt install -y nodejs npm
sudo npm install -g express
sudo snap install --classic powershell docker

sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum
curl https://s3-us-west-2.amazonaws.com/brave-apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://s3-us-west-2.amazonaws.com/brave-apt `lsb_release -sc` main" | sudo tee -a /etc/apt/sources.list.d/brave-`lsb_release -sc`.list
grep lsb_release /etc/apt/sources.list.d/brave*
sudo apt install brave
ethereum/client-go:stable
ethereum/client-go:alltools-stable

# The image has the following ports automatically exposed:
#    8545 TCP, used by the HTTP based JSON RPC API
#    8546 TCP, used by the WebSocket based JSON RPC API
#   30303 TCP and UDP, used by the P2P protocol running the network
#   30304 UDP, used by the P2P protocol's new peer discovery overlay

#Note, if you are running an Ethereum client inside a docker container, you might want to mount in a data volume as the client's data directory (located at /root/.ethereum inside the container) to ensure that downloaded data is preserved between restarts and/or container life-cycles.