const MyNFT = artifacts.require("MyNFT");

contract("MyNFT", accounts => {
  it("contract details", () => {
    return MyNFT.deployed().then(async instance => {
      let app = instance;
      name = await app.name();
      assert.equal(name, "My NFT", "incorrect name");

      symbol = await app.symbol();
      assert.equal(symbol, "NFT", "incorrect symbol");

      owner = await app.owner();
      assert.equal(owner, accounts[0], "owner of contract not account 0");
    });
  });
});
