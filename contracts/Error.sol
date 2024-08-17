// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Error {
    function testRequire(uint i) public pure {
        require(i > 10, "Input must be greater than 10");
    }

    function testRevert(uint i) public pure {
        if(i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint256 public num;
    function testAssert() public view {
        assert(num == 0);
    }

    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);
    function testCustomError(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if(bal < _withdrawAmount) {
            revert InsufficientBalance(bal, _withdrawAmount);
        }
    }
}