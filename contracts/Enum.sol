// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Enum {
    enum Color {
        Red,
        Green,
        Blue,
        Yellow,
        Purple,
        Orange
    }

    Color public color;

    function get() public view returns (Color) {
        return color;
    }

    function set(Color _color) public {
        color = _color;
    }

    function toOrange() public {
        color = Color.Orange;
    }

    function reset() public {
        delete color;
    }

    function enumToUnit(Color _color) public pure returns (uint) {
        return uint(_color);
    }

    function uintToEnum(uint i) public pure returns(Color) {
        return Color(i);
    }
}