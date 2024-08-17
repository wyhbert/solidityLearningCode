// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract State{
    // 修改状态变量
    // 触发事件
    // 创建其他合约
    // 使用 selfdestruct 来销毁合约
    // 通过函数调用发送以太币
    // 调用未标记为 view 或 pure 的任何函数
    // 使用低级别调用，如 transfer, send, call, delegatecall 等
    // 使用包含某些操作码的内联汇编

    uint count;
    function getCount() public view returns(uint) {
        return count;
    }

    function addCount() public {
        count += 1;
    }

    function add(uint a, uint b) public pure returns(uint) {
        return a + b;
    }
}