# EejitToken (EJT)

## Overview
EejitToken (EJT) is an ERC-20 compliant token deployed on the Polygon network. The token implements standard ERC-20 functionality with a fixed supply of 1,000,000 tokens.

## Contract Details
- **Name:** Eejit
- **Symbol:** EJT
- **Decimals:** 18
- **Total Supply:** 1,000,000 EJT
- **Contract Address:** `0x9482106fB7dBE4aECF16c7B0b78F589Da69E936f`
- **Network:** Polygon (MATIC)
- **Token Standard:** ERC-20

## Features
- Fixed total supply of 1,000,000 tokens
- Standard ERC-20 functionality:
  - Transfer tokens between addresses
  - Check token balances
  - Approve and transfer tokens on behalf of other addresses
- Ownership functionality through OpenZeppelin's Ownable contract

## Security Features
- Built using OpenZeppelin's battle-tested contracts
- Implements safe math operations (Solidity ^0.8.20)
- Standard ownership controls

## How to Add to MetaMask
1. Open MetaMask
2. Ensure you're connected to the Polygon network
3. Click "Import tokens"
4. Enter the contract address: `0x9482106fB7dBE4aECF16c7B0b78F589Da69E936f`
5. The token symbol (EJT) and decimals (18) will auto-fill
6. Click "Add Custom Token" and confirm

## Smart Contract
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EejitToken is ERC20, Ownable {
    constructor() ERC20("Eejit", "EJT") Ownable(msg.sender) {
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }
}
```

## Deployed Contract
View the deployed contract on [Polygonscan](https://polygonscan.com/address/0x9482106fB7dBE4aECF16c7B0b78F589Da69E936f)

## Token Economics
- **Initial Distribution:** 100% of tokens minted to deployer address
- **Maximum Supply:** 1,000,000 EJT (fixed, no additional minting possible)
- **Decimal Places:** 18 (standard for ERC-20 tokens)

## Functions
### Standard ERC-20 Functions
- `transfer(address to, uint256 amount)`: Transfer tokens to another address
- `balanceOf(address account)`: Check the token balance of an address
- `approve(address spender, uint256 amount)`: Approve another address to spend tokens
- `transferFrom(address from, address to, uint256 amount)`: Transfer tokens on behalf of another address
- `allowance(address owner, address spender)`: Check how many tokens an address can spend on behalf of another

### Owner Functions
- `owner()`: Returns the address of the contract owner
- `transferOwnership(address newOwner)`: Transfer ownership of the contract
- `renounceOwnership()`: Renounce ownership of the contract

## Development and Testing
The contract has been tested with the following test cases:
- Correct initial supply minting
- Token transfer functionality
- Owner assignment
- Insufficient balance handling

## Security Considerations
- The contract inherits from OpenZeppelin's audited contracts
- Uses Solidity 0.8.20's built-in overflow protection
- Implements standard access control through Ownable
- No mint function, ensuring fixed supply 
