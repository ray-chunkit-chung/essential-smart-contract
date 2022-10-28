# Essential Smart Contract

p2p trade dapp on ethereum demo for beginners
supply chain dapp on ethereum demo for beginners




# install test net

 - Geth lab
 - Ganache lab
 - Truffle lab https://trufflesuite.com/truffle/


Install Geth on Debian11 bullseye
# https://gist.github.com/reisenmachtfreude/2f8be2f7a7584341539ae95909e95809

```
apt upgrade
echo "deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main 
deb-src http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main" > /etc/apt/sources.list.d/ethereum-bioinc.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 2A518C819BE37D2C2031944D1C52189C923F6CA9
apt-get update
apt-get install ethereum
geth --syncmode light  ## light node at 127.0.0.1:8551
```

Install truffle and ganache by npm
https://www.npmjs.com/package/ganache-cli

```
apt install nodejs npm
npm install -g ganache
npm install -g truffle
```

Alternative testnet
https://github.com/f-o-a-m/cliquebait


# Hello World
```
truffle deploy --reset
HelloWorld.deployed().then(function(instance) { return instance });
HelloWorld.deployed().then(function(instance) { return instance.getHelloMessage() });
```

