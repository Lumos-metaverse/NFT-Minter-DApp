//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFTMinter is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;


    constructor() ERC721("NFTMinter", "NMM") {}

    function mintNFT(string memory tokenURI) external returns (uint256) {
       _tokenIds.increment();
       
        uint256 newtokenId = _tokenIds.current();
        _mint(msg.sender, newtokenId);
        _setTokenURI(newtokenId, tokenURI);
       
        return newtokenId;
    }

    function getTokenID() external view returns(Counters.Counter memory){
        return _tokenIds;
    }
}
