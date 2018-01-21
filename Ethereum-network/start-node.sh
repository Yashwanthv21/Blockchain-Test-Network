if [ "$#" -eq 1 ]
then
  geth --datadir="ethdata" --networkid 4088 --nodiscover console --unlock $1 --rpc --rpcport "8000" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc"
  exit 1
fi
