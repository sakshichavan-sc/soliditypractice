// Owner Controlled Contract
// Problem Statement

// Only contract owner should update secret value

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract OwnerContract {

    address public owner;

    uint256 public secret;

    constructor(){

        owner = msg.sender;

    }

    modifier onlyOwner(){

        require(
            msg.sender == owner,
            "Not Owner"
        );

        _;

    }

    function updateSecret(
        uint256 _secret
    )
    public
    onlyOwner
    {

        secret = _secret;

    }

}