// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC721Tradable.sol";

/**
 * @title Creature
 * Creature - a contract for the Dankdogz.
 */
contract Creature is ERC721Tradable {
    constructor(address _proxyRegistryAddress)
        ERC721Tradable("Dankdogz", "DDZ", _proxyRegistryAddress)
    {}

    function baseTokenURI() override public pure returns (string memory) {
        return "https://dankdogz.herokuapp.com/api/token/";
    }
}
