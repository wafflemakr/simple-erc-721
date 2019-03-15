# Simple ERC-721 Token

Deploying and testing ERC-721 token to local test node, Rinkeby or Ethereum Mainnet.

## Getting Started

### Prerequisites

This implementation requires the following prerequisites:

```
Node.js® v10.15.0, Node Package Management (npm) v6.8.0
```

[Node.js®](https://nodejs.org/en/) is a JavaScript runtime built on Chrome's V8 JavaScript engine. The installation includes npm. For other OS, refer to their website. This is installation for Ubuntu:

```
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt-get install -y nodejs
```

[ganache-cli](https://www.npmjs.com/package/ganache-cli) part of the Truffle suite of Ethereum development tools, is the command line version of Ganache, your personal blockchain for Ethereum development.

```
npm install -g ganache-cli
```

### Installing

The following packages are installed with npm: openzeppelin-solidity, truffle-hdwallet-provider, dotenv.

After cloning the repo, navigate to the project folder and run:

```
npm install
```

You will also need:

- MNEMONIC - a 12 or 24 word seed from your wallet. You create one with [MEW](https://www.myetherwallet.com/create-wallet)

- [Infura Key](https://infura.io/register) - Infura is an easy to use API and developer tools that provide secure, reliable, and scalable access to Ethereum and IPFS. In other words, a way to connect to the Ethereum Blockchain, so you don-t have to run a full node on your server. Register in Infura, create a new project, give it a name and then copy where it says "PROJECT ID".

Get gas for your transactions. You may need Rinkeby testnet ether or real ether:

- [Rinkeby](https://faucet.rinkeby.io/) - Enter this link to the Rinkeby's faucet. Here you will need to use one of your social networks to claim some testnet ether (up to 18.5) per social link. Follow instructions in the website.

- [Coinbase](https://www.coinbase.com/join/58787454ff90ca00dab65cb9) - Register at Coinbase. Buy some ether with your preferred method. Then send ether to your account's address generated with the mnemonic

Create a .env file on the project directory and copy:

```
INFURA_KEY='Project Id from Infura'
MNEMONIC='12 or 24 word seed'
```

### Testing

Run test, specifying the network you want to use with the --network tag:

```
truffle test
//or
truffle test --network rinkeby
//or
truffle test --network main
```

### Deploying

After you verify that everything is ok, deploy specifying the network or blank for local ganache node:

```
truffle migrate
//or
truffle migrate --network rinkeby
//or
truffle migrate --network main
```

Console will show the contract address in the second smart contract deployed under '2_deploy_contract.js'

### Interacting

You can then interact with your deployed smart contract by calling an instance and its methods. You can also call other ERC-721 methods listed on the .sol files

```
truffle migrate --network rinkeby
MyNFT.deployed().then(instance => app = instance)
app.name()
app.symbol()
app.owner() //owner of the contract
app.createToken('first token', 0, 1)
app.tokens(0) //returns the token created with id 0
app.ownerOf(0) //must return the address from where you deployed the contract
```

### Checking with Etherscan

I have deployed an example to Rinkeby Testnet with the following address: 0x368438d1376f8A2A6d96773bbEBEA7EAD2Ce7111

[check with etherscan](https://rinkeby.etherscan.io/address/0x368438d1376f8A2A6d96773bbEBEA7EAD2Ce7111)

You can also see all events emitted by the contract in the 'events' tab on etherscan.
