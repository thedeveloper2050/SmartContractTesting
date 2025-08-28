// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {MyNewToken} from "../src/MyNewTokenTrasfer.sol";

contract MyTokenTransferTest is Test {
    MyNewToken public mynewtoken;

    function setUp() public {
        mynewtoken = new MyNewToken();
    }

    function test_transfer() public {
        mynewtoken.transfer(address(1), 99);
        assertEq(mynewtoken.balanceOf(address(1)), 99);
    }

    function test_transferFuzz(uint256 _amount) public {
        vm.assume(_amount <= 777);
        mynewtoken.transfer(address(1),_amount);
        assertEq(mynewtoken.balanceOf(address(1)),_amount);
    }
}
