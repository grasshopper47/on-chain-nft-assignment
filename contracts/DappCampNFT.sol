// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DappCampNFT is ERC721Enumerable, Ownable
{
    // -- STACK -----------------------------
    string[] private collection =
    [
        ""
    ];

    uint256 public MAX_MINTABLE_TOKENS = 5;

    // -- CONSTRUCTORS ----------------------
    constructor() ERC721("DappCamp NFT", "DCAMP") Ownable() { }

    // -- METHODS ---------------------------
    function random(string memory input)
    internal
    pure
    returns (uint256)
    {

    }

    function pluck
    (
        uint256 tokenId
    ,   string memory keyPrefix
    ,   string[] memory sourceArray
    )
    internal
    pure
    returns (string memory)
    {

    }

    function tokenURI(uint256 tokenId) override
    public
    view
    returns (string memory)
    {

    }

    function claim(uint256 tokenId)
    public
    {
        require(tokenId > 0 && tokenId < MAX_MINTABLE_TOKENS, "Token ID invalid");

        _safeMint(_msgSender(), tokenId);
    }
}