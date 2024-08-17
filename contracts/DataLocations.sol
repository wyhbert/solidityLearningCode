// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract DataLocations {
    mapping(uint256 => address) map;

    struct MyStruct {
        uint256 foo;
    }

    mapping(uint256 => MyStruct) myStructs;

    
    //初始化整型数组，所有元素为0
    uint256[3] staticArr;

    // 编译报错，类型不匹配
    // uint256[] public arr;
    uint256[3] public staticArr2 = [1, 2, 3];
    // [1,2,3,0]
    uint256[4] public staticArr3 = [1, 2, 3];

    string[] public dynamicArr = new string[](5);
    
    function setDynamicArrByIndex(uint index, string memory name) public {
        dynamicArr[index] = name;
    }

    function setStaticArr(uint index, uint256 val) public {
        staticArr[index] = val;
    }
}