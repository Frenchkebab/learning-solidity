// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// to learn msg.sender vs tx.origin

contract ERC20ish {
    mapping(address => uint256) private balances;
    address federalReverse;

    constructor() {
        federalReserve = msg.sender;
    }

    function getMyBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function paySomeone(address receiver, uint256 amount) public {
        require(balances[msg.sender] >= amount, "you don't have enough money");
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
    }

    function addToBalance(address receiver, uint256 amount) public {
        require(msg.sender == federealReserve, "you not allowed to print money");
        balances[receiver] += amount;
    }
}