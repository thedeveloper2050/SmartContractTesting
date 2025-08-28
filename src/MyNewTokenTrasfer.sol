// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyNewToken {
    string public name = "My_New_Token";
    string public symbol = "MNT";
    uint256 public totalSupply = 999;
    address public owner;

    //mapping
    mapping(address => uint256) balances;
    //event
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function transfer(address _to, uint256 _amount) external {
        require(balances[msg.sender] >= _amount, "Token Balancer Not Enough");
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
        emit Transfer(msg.sender, _to, _amount);
    }

    function balanceOf(address _account) public view returns (uint256) {
        return balances[_account];
    }
}
