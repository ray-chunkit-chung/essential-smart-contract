// SPDX-License-Identifier: MIT
// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
// ----------------------------------------------------------------------------

pragma solidity 0.8.17;

abstract contract ERC20Interface {
    // Total number of tokens
    uint256 public totSupply;

    // Return the total number of tokens in circulation
    function totalSupply() public view virtual returns (uint256);

    // Return the current balance (in tokens) of a specified address
    function balanceOf(address tokenOwner)
        public
        view
        virtual
        returns (uint256 balance);

    // msg.sender approve spender to transfer x tokens
    function approve(address spender, uint256 tokens)
        public
        virtual
        returns (bool success);

    // Return how much owner approved spender to spend
    function allowance(address tokenOwner, address spender)
        public
        view
        virtual
        returns (uint256 remaining);

    // msg.sender transfer x tokens from msg.sender to receiver
    function transfer(address to, uint256 tokens)
        public
        virtual
        returns (bool success);

    // msg.sender transfer x tokens from spender to receiver
    function transferFrom(
        address from,
        address to,
        uint256 tokens
    ) public virtual returns (bool success);

    // Broadcast Transfer event to EVM 
    event Transfer(address indexed from, address indexed to, uint256 tokens);

    // Broadcast Approval event to EVM 
    event Approval(
        address indexed tokenOwner,
        address indexed spender,
        uint256 tokens
    );
}
