// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Loop{
    function loop() public {
        for(uint256 i = 0; i < 10; i++) {
            if(i == 5) {
                continue;
            }
            if(i == 7) {
                break;
            }
        }
    }

    function loop2() public {
        uint256 j;
        while(j < 10) {
            j++;
        }
    }
}