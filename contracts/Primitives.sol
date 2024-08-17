// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Primitives {
    bool public boo = true;

    uint8 public u8 = 1;
    uint16 public u1 = 12345;
    uint256 public u2 = 12345678;

    bytes1 a = 0xb5;
    bytes2 b = 0x1234;

    address public addr = 0x1234567890123456789012345678901234567890;

    // constand 修饰的成员不可修改
    address public constant MY_ADDRESS = 0x0000000000000000000000000000000000000000;
    uint256 public constant MY_UINT = 123;

    address public immutable myAddress2;
    uint256 public immutable myUint2;

    // immutable 构造方法中修饰的成员可修改
    constructor(uint256 _myUnit) {
        myAddress2 = msg.sender;
        myUint2 = _myUnit;
    }

    uint256 public num;
    function set(uint256 _num) public {
        num = _num;
    }

    function get() public view returns (uint256) {
        return num;
    }
}