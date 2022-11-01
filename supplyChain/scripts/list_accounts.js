// import web3 from "web3";

// module.exports = function (callback) {
//   // TODO: implement your actions

//   // console.log(web3.eth.accounts);
//   var accounts;
//   web3.eth.getAccounts().then(function(response) { accounts = response; console.log(accounts[0]; });

//   // invoke callback
//   callback();
// }

// web3.eth.getAccounts();

module.exports = async function(callback) {
  console.log("test");
  // console.log((await web3.eth.getAccounts())[0]);
  callback();
}

