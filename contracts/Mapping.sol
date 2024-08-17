// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Mapping {
    mapping(address => uint256) public map;

    function get(address _addr) public view returns (uint256) {
        return map[_addr];
    }

    function set(address _addr, uint256 _value) public {
        map[_addr] = _value;
    }

    function remove(address _addr) public {
        delete map[_addr];
    }

    mapping(address => mapping(uint256 => bool)) public nestedMap;

    function getNested(address _addr, uint256 _key) public view returns (bool) {
        return nestedMap[_addr][_key];
    }

    function setNested(address _addr, uint256 _key, bool _value) public {
        nestedMap[_addr][_key] = _value;
    }

    function deleteNested(address _addr, uint256 _key) public {
        delete nestedMap[_addr][_key];
    }
}