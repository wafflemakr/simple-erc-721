const NFToken = artifacts.require("MyNFT");

module.exports = function(deployer) {
  deployer.deploy(NFToken);
};
