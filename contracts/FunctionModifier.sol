// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FunctionModifier{

    address public owner;
    uint256 public x = 10;
    bool public locked;

    event log(string message);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        // emit log("execute onlyOwner");
        require(msg.sender == owner, "not owner");
        _;
    }
    modifier validAddress(address _addr) {
        // emit log("execute validAddress");
        require(_addr != address(0), "not valid address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    modifier noReentrancy() {
        require(!locked, "no reentrancy");
        locked = true;
        emit log("locked is true");
        _;
        locked = false;
        emit log("locked is false");
    }

    function decrement(uint256 i) public noReentrancy {
        x -= i;
        emit log("x - ");
        if(i > 1) {
            decrement(i - 1);
        }
    }
}