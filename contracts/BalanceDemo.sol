// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BalanceDemo {
    mapping(address => uint256) balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "not enough deposit");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function amIRich() public view returns (bool) {
        if (msg.sender.balance >= 100 ether) {
            return true;
        }
        return false;
    }
}