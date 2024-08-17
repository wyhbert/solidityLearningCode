// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

contract Array {
    uint256[] public arr;
    uint256[] public initedArr = [1,2,3];
    uint256[10] public fixedArray;

    function getByIndex(uint256 index) public view returns (uint256) {
        return arr[index];
    }

    function push(uint256 num) public {
        arr.push(num);
    }

    function pop() public {
        arr.pop();
    }

    function removeByIndex(uint256 index) public {
        delete arr[index];
    }

    function getArrLength() public view returns(uint256) {
        return arr.length;
    }

    function createInMemory() external {
        uint256[] memory a = new uint256[](5);
    }

}