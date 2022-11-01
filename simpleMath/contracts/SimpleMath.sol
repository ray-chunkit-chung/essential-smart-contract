// SPDX-License-Identifier: MIT
// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
// ----------------------------------------------------------------------------

pragma solidity 0.8.17;

contract SimpleMath {
    uint256 private constant MAX_UINT256 = 2**256 - 1;

    function add(uint256 _a, uint256 _b) public pure returns (uint256) {
        uint256 c = _a + _b;
        return c;
    }
}
