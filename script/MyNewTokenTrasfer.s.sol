// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {MyNewToken} from "../src/MyNewTokenTrasfer.sol";

contract CounterScript is Script {
    MyNewToken public mynewtoken;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        mynewtoken = new MyNewToken();

        vm.stopBroadcast();
    }
}
