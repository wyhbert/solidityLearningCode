// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Name{
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Age {
    uint256 public age;

    constructor(uint256 _age) {
        age = _age;
    }
}

contract Sex {
    string public sex;

    constructor(string memory _sex) {
        sex = _sex;
    }
}

// 构造顺序Name -> Age -> Sex -> Person
contract Person is Name, Age, Sex {
    constructor(string memory _name, uint256 _age, string memory _sex) Name(_name) Age(_age) Sex(_sex) {
    }
}

// // 构造顺序Name -> Age -> Person
// contract Person2 is Name, Age {
//     constructor() Name("xx is me!") Age(20) {}
// }