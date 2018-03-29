var HDWalletProvider = require("truffle-hdwallet-provider");

var infura_apikey = "infura api key goes here";
var mnemonic = "your metamask mnemonic goes here";


module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  solc: {
      optimizer: {
        enabled: true,
        runs: 200
      }
  },
   networks: {
     development: {
     host: "localhost",
     port: 8545,
     network_id: "*", // Match any network id
     from: "0xcc42b083231d36976a1e018ee219fd37f0079741"
    },
    ropsten: {
      provider: function() {
		  return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/"+infura_apikey)
		  },
      network_id: 3,
      gas: 4698712
    }
 }
};
