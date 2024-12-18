// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EejitToken is ERC20, Ownable {
    constructor() ERC20("Eejit", "EJT") Ownable(msg.sender) {
        // Mint 1,000,000 tokens to the contract deployer
        // Since ERC20 uses 18 decimals by default, we multiply by 10^18
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }
} 