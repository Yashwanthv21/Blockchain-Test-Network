# Blockchain Test Network
Ethereum Blockchain test network to try, experiment and deploy various types of smart contracts.

Check the article on Medium https://medium.com/@yashwanthvenati/setup-private-ethereum-blockchain-network-with-multiple-nodes-in-5-mins-708ab89b1966

# Execution 
This readme contains all the basic terminology of blockchain, and the refrences used to do this project.
The execution of the project steps are in the report.pdf file in this project.
The Ethereum network filder containd all the scripts to be run on the server.
The app folder has smart contracts and javascript code, which is used to deploy contracts to the network by changing the IP in the truffle.js file.

## Introduction

- give explicit control of digital assets to end-users and remove the need to trust any third-party servers and infrastructure.
- Smart contracts are simply computer programs that execute predefined actions when certain conditions within the system are met.
- Consensus refers to a system of ensuring that parties agree to a certain state of the system as the true state.

### Distributed Ledger Technology (DLT)

- A distributed ledger is a type of data structure which resides across multiple computer devices, generally spread across locations or regions.
- In summary, distributed ledger technology generally consists of three basic components:

- A data model that captures the current state of the ledger
- A language of transactions that changes the ledger state
- A protocol used to build consensus among participants around which transactions will be accepted, and in what order, by the ledger.

### Blockchain

- Blockchain is a specific form or subset of distributed ledger technologies, which constructs a chronological chain of blocks, hence the name 'block-chain'. A block refers to a set of transactions that are bundled together and added to the chain at the same time.
- A block commonly consists of four pieces of metadata:

    - The reference to the previous block
    - The proof of work, also known as a nonce
    - The timestamp
    - The Merkle tree root for the transactions included in this block.

### Data Structures

- Merkle tree
	- The Merkle tree, also known as a binary hash tree, is a data structure that is used to store hashes of the individual data in large datasets in a way to make the verification of the dataset efficient. It is an anti-tamper mechanism to ensure that the large dataset has not been changed.

### Transaction

- The record of an event, cryptographically secured with a digital signature, that is verified, ordered, and bundled together into blocks, form the transactions in the blockchain.

### Consensus

- Consensus in the network refers to the process of achieving agreement among the network participants as to the correct state of data on the system. Consensus leads to all nodes sharing the exact same data. A consensus algorithm, hence, does two things: it ensures that the data on the ledger is the same for all the nodes in the network, and, in turn, prevents malicious actors from manipulating the data.
- Consensus can be implemented in different ways, such as through the use of lottery-based algorithms (PoET or PoW), or through the use of voting-based methods (SBFT), each targeting different network requirements and fault tolerance models.
- Lottery-based algorithms are advantageous in that they can scale to a large number of nodes. Voting-based algorithms provide low-latency finality.

#### Proof of Work (PoW)

- PoW requires a huge amount of energy to be expended, given the computationally heavy algorithm. In addition, PoW has a high latency of transaction validation, and the concentration of mining power is located in countries where electricity is cheap. In terms of the network security, PoW is susceptible to the '51% attack', which refers to an attack on a blockchain by a group of miners controlling more than 50% of the network's computing power.

#### Proof of Stake (PoS)

- The Proof of Stake algorithm is a generalization of the Proof of Work algorithm. In PoS, the nodes are known as the 'validators' and, rather than mining the blockchain, they validate the transactions to earn a transaction fee. There is no mining to be done, as all coins exist from day one. Simply put, nodes are randomly selected to validate blocks, and the probability of this random selection depends on the amount of stake held. So, if node X owns 2 coins and node Y owns 1 coin, node X is twice as likely to be called upon to validate a block of transactions.
- The PoS algorithm saves expensive computational resources that are spent in mining under a PoW consensus regime.

#### Proof of Elapsed Time (PoET)

- Developed by Intel, the Proof of Elapsed Time consensus algorithm emulates the Bitcoin-style Proof of Work. Hyperledger's Sawtooth implementation is an example of PoET at work. Instead of competing to solve the cryptographic challenge and mine the next block, as in the Bitcoin blockchain, the PoET consensus algorithm is a hybrid of a random lottery and first-come-first-serve basis. In PoET, each validator is given a random wait time.
- The validator with the shortest wait time for a particular transaction block is elected the leader. This "leader" gets to create the next block on the chain.

#### Simplified Byzantine Fault Tolerance (SBFT)

- The Simplified Byzantine Fault Tolerant consensus algorithm implements an adopted version of the Practical Byzantine Fault Tolerant (PBFT) algorithm, and seeks to provide significant improvements over Bitcoin's Proof of Work consensus protocol. The basic idea involves a single validator who bundles proposed transactions and forms a new block. Note that, unlike the Bitcoin blockchain, the validator is a known party, given the permissioned nature of the ledger. Consensus is achieved as a result of a minimum number of other nodes in the network ratifying the new block. In order to be tolerant of a Byzantine fault, the number of nodes that must reach consensus is 2f+1 in a system containing 3f+1 nodes, where f is the number of faults in the system. For example, if we have 7 nodes in the system, then 5 of those nodes must agree if 2 of the nodes are acting in a faulty manner.
- The practical example would be that of ByzCoin, which seeks to make key improvements over the original Bitcoin protocol. Addressing the challenge around scalability due to high latency, ByzCoin transactions are irreversibly committed to the blockchain within seconds. The added advantage is the communication trees to "(...) optimize transaction commitments and verification under normal operations."

#### Proof of Authority (PoA)

- Proof-of-Authority (PoA) is a consensus algorithm which can be used for permissioned ledgers. It uses a set of 'authorities', which are designated nodes that are allowed to create new blocks and secure the ledger. Ledgers using PoA require sign-off by a majority of authorities in order for a block to be created.

### Hyperledger sawtooth

- Hyperledger Sawtooth is a blockchain framework with potential in IoT, manufacturing, finance, and enterprise. Hyperledger Sawtooth supports diverse requirements, including both permissioned and permissionless deployments, and a pluggable consensus algorithm. This framework also provides a revolutionary consensus algorithm, Proof of Elapsed Time (PoET), that allows for versatility and scalability suited for a variety of solutions.

- Hyperledger Sawtooth supports many different infrastructural requirements, such as:

	- Permissioned and permissionless infrastructure
    - Modular blockchain architecture
    - Scalability, which is good for larger blockchain networks due to higher throughput
    - Many languages for transaction logic.

- While PoET provides many benefits and aids tremendously with scalability, there is a downside to the PoET consensus algorithm. And that is the issue of forks. The PoET algorithm may lead to forking, in which two 'winners' propose a block. Each fork has to be resolved by validators, and this results in a delay in reaching consistency across the network.


### Hyperledger Fabric

- In a distributed ledger system, consensus is the process of reaching agreement on the next set of transactions to be added to the ledger. In Hyperledger Fabric, consensus is made up of three distinct steps:

    - Transaction endorsement
    - Ordering
    - Validation and commitment.


## References

- Quorum
- socket.io
- https://hyperledger-fabric.readthedocs.io/en/latest/build_network.html
- https://hub.docker.com/u/ibmblockchain/
- https://chat.hyperledger.org/channel/fabric
- https://www.ibm.com/developerworks/community/blogs/8d277a63-4204-4fd3-8cb8-b7cb222cd522/entry/Steps_to_setup_Blockchain_Hyperledger_Fabric_0_6_development_environment_on_Ubuntu?lang=en
- https://domsteil.com/2017/04/22/how-to-setup-hyperledger-fabric-v1-0-on-aws/
- https://medium.com/think-consortium-on-blockchain/building-a-permissioned-blockchain-pt-1-8ebab9e68582
- https://mlgblockchain.com/hyperledger-tutorials.html
- https://www.ibm.com/developerworks/cloud/library/cl-ibm-blockchain-101-quick-start-guide-for-developers-bluemix-trs/index.html
- https://proffer.network/
- https://stackoverflow.com/questions/46009258/go-build-fails-runtime-mstkbar-go15110-debug-gcstackbarrieroff-undefined
- http://www.chainthat.com/updates/2017/7/5/using-hyperledger-fabric-v1-in-reinsurance
- http://iotbl.blogspot.in/2017/03/setting-up-private-ethereum-testnet.html
- https://github.com/ethereum/go-ethereum/wiki/Private-network#creating-the-genesis-block
- https://github.com/ethereum/wiki/wiki/Mining
- https://github.com/ethereum/go-ethereum/wiki/Private-network
- https://hackernoon.com/heres-how-i-built-a-private-blockchain-network-and-you-can-too-62ca7db556c0
- https://ethereum.gitbooks.io/frontier-guide/content/writing_contract.html
- http://solidity.readthedocs.io/en/latest/security-considerations.html
- https://github.com/ethereum/wiki/wiki/Serpent
- https://github.com/ethereum/go-ethereum/wiki
- https://github.com/ethereum/pyethapp/wiki/The_Console
- https://ethereum.stackexchange.com/questions/15435/how-to-compile-solidity-contracts-with-geth-v1-6
- https://alanbuxton.wordpress.com/2017/07/19/first-steps-with-ethereum-private-networks-and-smart-contracts-on-ubuntu-16-04/
- https://ethereum.github.io/browser-solidity/#version=soljson-v0.4.18+commit.9cf6e910.js
- http://www.ziggify.com/blog/blockchain-stack-1-installing-ethereum-geth-smart-contract/
- https://medium.com/shokone/https-medium-com-shokone-building-a-hello-world-smart-contract-on-ethereum-f303c7d05f0
- https://ethereum.stackexchange.com/questions/125/how-do-i-set-up-a-private-ethereum-network/16306#16306
- https://www.udemy.com/blockchain-application/learn/v4/content
- http://chainskills.com/2017/03/10/part-3-setup-the-private-chain-miners/
- https://medium.com/@ConsenSys/a-101-noob-intro-to-programming-smart-contracts-on-ethereum-695d15c1dab4
- https://ethereum.stackexchange.com/questions/3163/how-can-i-expose-geths-rpc-server-to-external-connections
- https://ethereum.stackexchange.com/questions/3305/what-is-http-localhost8545
-
https://steemit.com/ethereum/@grunzwanzling/ethereum-mining-with-google-cloud-nvidia-tesla-k80-actually-works-and-is-highly-profitable
- https://www.yougetsignal.com/tools/open-ports/
- https://ethereum.stackexchange.com/questions/23550/how-to-measure-time-in-private-network-and-to-control-mining-process
- https://ethereum.stackexchange.com/questions/26191/transaction-issuing-and-process
- https://blog.ethereum.org/2014/07/11/toward-a-12-second-block-time/
