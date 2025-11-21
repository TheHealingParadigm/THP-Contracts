// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title THP Phygital NFT Contract
/// @notice NFTs provide utility and optional extra voting power only
contract THP_PhygitalNFT is ERC721URIStorage, Ownable {

    uint256 public tokenCounter;

    constructor() ERC721("THP_PhygitalNFT", "THP-NFT") {
        tokenCounter = 0;
    }

    /// @notice Mint a new NFT
    /// @param to Recipient address
    /// @param tokenURI Metadata URI
    function mintNFT(address to, string memory tokenURI) external onlyOwner {
        uint256 tokenId = tokenCounter;
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, tokenURI);
        tokenCounter++;
    }

    /// @notice NFTs can optionally be used to provide extra DAO voting power
    /// No financial logic included
}
