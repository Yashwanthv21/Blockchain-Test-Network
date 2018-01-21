# Install the required softwares for Ethereum
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get -y install ethereum

# Create a new Ethereum Account
geth --datadir ethdata account new

echo "COPY THIS ADDRESS"
