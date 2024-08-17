// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Structs {
    struct Person {
        string name;
        uint256 age;
    }

    Person[] public personArr;

    function create1(string calldata _name, uint256 _age) public {
        personArr.push(Person(_name, _age));
    }
    function createXiaoLi() public {
        Person memory xiaoLi = Person("Xiao Li", 18);
        personArr.push(xiaoLi);
    }

    
}