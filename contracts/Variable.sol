// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

contract Variable {
    
    string public text = "Hello, World!";
    uint256 public num = 100;

    function dosth() public {
        uint256 i = 456;

        uint256 timestampe = block.timestamp;
        address sender = msg.sender;
    }

    // 获取地址账户余额
    function get_balance() public view returns(uint256) {
        return address(this).balance;
    }

    // 获取合约代码
    function get_code() public view returns(bytes memory) {
        return address(this).code;
    }

    // 获取合约代码的hash值
    function get_codehash() public view returns(bytes32) {
        return address(this).codehash;
    }
}