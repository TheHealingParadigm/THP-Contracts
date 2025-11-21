// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title THP Governance Token
/// @notice Used for DAO voting only, no financial rights
contract THP_GovernanceToken is ERC20, Ownable {

    constructor() ERC20("THP Governance Token", "THP-GOV") {}

    /// @notice Mint tokens for governance distribution (optional)
    /// Only for voting, no profit or dividends
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
