pragma solidity ^0.5.0;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721Metadata.sol";

contract MyNFT is ERC721Metadata{

    using SafeMath for uint256; 
    using Address for address;

    struct Token {
        string name;  
        uint256 level;
        uint256 value;              
    }

    Token[] public tokens;


    /// @notice Set Token Name and symbol
    constructor() ERC721Metadata("My NFT", "NFT") public {}


    function createToken(
        string memory _name, uint256 _level, uint256 _value) 
        public onlyOwner{

        
        //New Token Info
        Token memory _token = Token({
            name: _name,
            level: _level,
            value: _value
            
        });

        //Mint new token and make sender the owner
        uint256 _newTokenId = tokens.push(_token) - 1;
        _mint(msg.sender,_newTokenId); 

    }
}
